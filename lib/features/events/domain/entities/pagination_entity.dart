import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_entity.freezed.dart';

@freezed
class PaginationEntity with _$PaginationEntity, EquatableMixin {
  const PaginationEntity._();
  const factory PaginationEntity({
    required int page,
    required int size,
    required int totalCount,
    required int lastPage,
  }) = _PaginationEntity;

  @override
  List<Object?> get props => [page, size, totalCount, lastPage];
}
