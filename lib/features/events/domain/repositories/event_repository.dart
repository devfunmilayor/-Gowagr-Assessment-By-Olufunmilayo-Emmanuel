import 'package:dartz/dartz.dart';
import 'package:gowagr_assessment/core/error/app_error.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';

typedef EventsWithPagination = (List<EventEntity>, PaginationEntity);

abstract class EventRepository {
  Future<Either<Failure, EventsWithPagination>> getPublicEvents(
      {String? keyword, bool? trending, int page, int size, String? category});
}
