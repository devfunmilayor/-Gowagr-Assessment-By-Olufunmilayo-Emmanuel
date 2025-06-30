import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'market_entity.freezed.dart';

@freezed
class MarketEntity with _$MarketEntity, EquatableMixin {
  const MarketEntity._();
  const factory MarketEntity({
    required String id,
    required String title,
    required String rules,
    String? imageUrl,
    String? image128Url,
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
  }) = _MarketEntity;

  @override
  List<Object?> get props => [
        id,
        title,
        rules,
        imageUrl,
        image128Url,
        yesBuyPrice,
        noBuyPrice,
        yesPriceForEstimate,
        noPriceForEstimate,
        status,
        resolvedOutcome,
        volumeValueYes,
        volumeValueNo,
        yesProfitForEstimate,
        noProfitForEstimate,
      ];
}
