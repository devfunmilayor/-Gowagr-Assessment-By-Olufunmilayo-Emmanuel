import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
class PaginationModel with _$PaginationModel {
  const PaginationModel._();
  const factory PaginationModel(
      {required int page,
      required int size,
      required int totalCount,
      required int lastPage}) = _PaginationModel;

  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);

  PaginationEntity toEntity() {
    return PaginationEntity(
        page: page, size: size, totalCount: totalCount, lastPage: lastPage);
  }
}
