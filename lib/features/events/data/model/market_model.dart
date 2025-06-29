import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gowagr_assessment/features/events/domain/entities/market_entity.dart';

part 'market_model.freezed.dart';
part 'market_model.g.dart';

@freezed
class MarketModel with _$MarketModel {
  const MarketModel._(); // Private constructor for custom methods
  const factory MarketModel({
    required String id,
    required String title,
    required String rules,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'image128Url') String? image128Url,
    required double yesBuyPrice,
    required double noBuyPrice,
    required int yesPriceForEstimate,
    required int noPriceForEstimate,
    required String status,
    String? resolvedOutcome,
    required double volumeValueYes,
    required double volumeValueNo,
    required int yesProfitForEstimate,
    required int noProfitForEstimate,
  }) = _MarketModel;

  factory MarketModel.fromJson(Map<String, dynamic> json) =>
      _$MarketModelFromJson(json);

  MarketEntity toEntity() {
    return MarketEntity(
      id: id,
      title: title,
      rules: rules,
      imageUrl: imageUrl,
      image128Url: image128Url,
      yesBuyPrice: yesBuyPrice,
      noBuyPrice: noBuyPrice,
      yesPriceForEstimate: yesPriceForEstimate,
      noPriceForEstimate: noPriceForEstimate,
      status: status,
      resolvedOutcome: resolvedOutcome,
      volumeValueYes: volumeValueYes,
      volumeValueNo: volumeValueNo,
      yesProfitForEstimate: yesProfitForEstimate,
      noProfitForEstimate: noProfitForEstimate,
    );
  }
}
