import 'package:dartz/dartz.dart';
import 'package:gowagr_assessment/core/error/app_error.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';
import 'package:gowagr_assessment/features/events/domain/repositories/event_repository.dart';
import 'package:injectable/injectable.dart';

class GetEventsParams {
  final String? keyword;
  final bool? trending;
  final int page;
  final int size;
  final String? category;

  GetEventsParams({
    this.keyword,
    this.trending,
    required this.page,
    required this.size,
    this.category,
  });
}

@injectable
class GetPublicEventsUsecase {
  final EventRepository repository;

  GetPublicEventsUsecase(this.repository);

  Future<Either<Failure, (List<EventEntity>, PaginationEntity)>> call(
      GetEventsParams params) async {
    return await repository.getPublicEvents(
        keyword: params.keyword,
        trending: params.trending,
        page: params.page,
        size: params.size,
        category: params.category);
  }
}
