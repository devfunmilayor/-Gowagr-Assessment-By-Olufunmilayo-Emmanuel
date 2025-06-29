import 'package:dartz/dartz.dart';
import 'package:gowagr_assessment/core/error/app_error.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';

abstract class EventRepository {
  Future<Either<Failure, (List<EventEntity>, PaginationEntity)>>
      getPublicEvents(
          {String? keyword,
          bool? trending,
          required int page,
          required int size,
          String? category});
}
