import 'package:dartz/dartz.dart';
import 'package:gowagr_assessment/core/error/app_error.dart';
import 'package:gowagr_assessment/core/network/network_check.dart';
import 'package:gowagr_assessment/features/events/data/datasources/event_local_data_source.dart';
import 'package:gowagr_assessment/features/events/data/datasources/event_remote_data_source.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';
import 'package:injectable/injectable.dart';
import 'package:gowagr_assessment/core/error/exceptions.dart';
import 'package:gowagr_assessment/features/events/domain/repositories/event_repository.dart';

@LazySingleton(as: EventRepository)
class EventRepositoryImpl implements EventRepository {
  final EventRemoteDataSource remoteDataSource;
  final EventLocalDataSource localDataSource;
  final NetworkInfo networkInfo;

  EventRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, (List<EventEntity>, PaginationEntity)>>
      getPublicEvents(
          {String? keyword,
          bool? trending,
          required int page,
          required int size,
          String? category}) async {
    if (await networkInfo.isConnected) {
      try {
        final remoteData = await remoteDataSource.getPublicEvents(
          keyword: keyword,
          trending: trending,
          size: size,
          page: page,
          category: category,
        );
        if (page == 1) {
          await localDataSource.cacheEvents(remoteData);
        }
        if (remoteData.events != null && remoteData.pagination != null) {
          return Right((
            remoteData.events!.map((e) => e.toEntity()).toList(),
            remoteData.pagination!.toEntity()
          ));
        } else {
          return Left(ServerFailure(message: 'No events or pagination data found', statusCode: null));
        }
      } on ServerException catch (e) {
        return Left(
            ServerFailure(message: e.message, statusCode: e.statusCode));
      } on NetworkException catch (e) {
        return Left(NetworkFailure(message: e.message));
      }
    } else {
      try {
        final cachedData = await localDataSource.getCachedEvents();
        if (cachedData.events != null && cachedData.pagination != null) {
          return Right((
            cachedData.events!.map((e) => e.toEntity()).toList(),
            cachedData.pagination!.toEntity()
          ));
        } else {
          return Left(CacheFailure(message: 'No cached events or pagination data found'));
        }
      } on CacheException catch (e) {
        return Left(CacheFailure(message: e.message));
      }
    }
  }
}
