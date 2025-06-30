import 'package:dartz/dartz.dart';
import 'package:gowagr_assessment/core/error/app_error.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';
import 'package:gowagr_assessment/features/events/domain/repositories/event_repository.dart';
import 'package:injectable/injectable.dart';

import 'package:equatable/equatable.dart';

class GetEventsParams extends Equatable {
  final String? category;
  final String? keyword;
  final int page;
  final int size;
  final bool trending;

  const GetEventsParams({
    this.category,
    this.keyword,
    required this.page,
    required this.size,
    required this.trending,
  });

  @override
  List<Object?> get props => [
        category,
        keyword,
        page,
        size,
        trending,
      ];
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
