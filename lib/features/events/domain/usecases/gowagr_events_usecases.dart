import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:gowagr_assessment/core/error/app_error.dart';
import 'package:injectable/injectable.dart';
import 'package:gowagr_assessment/core/usecase/usecase.dart';
import 'package:gowagr_assessment/features/events/domain/repositories/event_repository.dart';

@LazySingleton()
class GetPublicEventsUsecase
    implements UseCase<EventsWithPagination, GetEventsParams> {
  final EventRepository repository;

  GetPublicEventsUsecase(this.repository);

  @override
  Future<Either<Failure, EventsWithPagination>> call(
      GetEventsParams params) async {
    return await repository.getPublicEvents(
      keyword: params.keyword,
      trending: params.trending,
      size: params.size,
      page: params.page,
      category: params.category,
    );
  }
}

class GetEventsParams extends Equatable {
  final String? keyword;
  final bool? trending;
  final int size;
  final int page;
  final String? category;

  const GetEventsParams(
      {this.trending,
      this.keyword,
      this.page = 1,
      this.size = 10,
      this.category});

  @override
  List<Object?> get props => [keyword, trending, size, page, category];
}
