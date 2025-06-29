import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gowagr_assessment/features/events/domain/entities/market_entity.dart';

part 'market_model.freezed.dart';
part 'market_model.g.dart';

@freezed
class MarketModel with _$MarketModel {
  const MarketModel._();
  const factory MarketModel({
    String? id,
    String? title,
    String? rules,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'image128Url') String? image128Url,
    double? yesBuyPrice,
    double? noBuyPrice,
    int? yesPriceForEstimate,
    int? noPriceForEstimate,
    String? status,
    String? resolvedOutcome,
    double? volumeValueYes,
    double? volumeValueNo,
    int? yesProfitForEstimate,
    int? noProfitForEstimate,
  }) = _MarketModel;

  factory MarketModel.fromJson(Map<String, dynamic> json) =>
      _$MarketModelFromJson(json);

  MarketEntity toEntity() {
    return MarketEntity(
      id: id ?? '',
      title: title ?? 'N/A',
      rules: rules ?? 'No rules provided',
      imageUrl: imageUrl,
      image128Url: image128Url,
      yesBuyPrice: yesBuyPrice ?? 0.0,
      noBuyPrice: noBuyPrice ?? 0.0,
      yesPriceForEstimate: yesPriceForEstimate ?? 0,
      noPriceForEstimate: noPriceForEstimate ?? 0,
      status: status ?? 'UNKNOWN',
      resolvedOutcome: resolvedOutcome,
      volumeValueYes: volumeValueYes ?? 0.0,
      volumeValueNo: volumeValueNo ?? 0.0,
      yesProfitForEstimate: yesProfitForEstimate ?? 0,
      noProfitForEstimate: noProfitForEstimate ?? 0,
    );
  }
}
