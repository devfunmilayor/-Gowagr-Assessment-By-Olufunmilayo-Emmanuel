import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gowagr_assessment/features/events/domain/entities/market_entity.dart';

part 'event_entity.freezed.dart';

@freezed
class EventEntity with _$EventEntity, EquatableMixin {
  const EventEntity._();
  const factory EventEntity({
    required DateTime createdAt,
    required List<MarketEntity> markets,
    DateTime? resolvedAt,
    String? imageUrl,
    String? image128Url,
    required String id,
    required String title,
    required String type,
    String? description,
    required String category,
    required List<String> hashtags,
    required List<String> countryCodes,
    required List<String> regions,
    required String status,
    required DateTime resolutionDate,
    String? resolutionSource,
    required double totalVolume,
  }) = _EventEntity;

  @override
  List<Object?> get props => [
        createdAt,
        markets,
        resolvedAt,
        imageUrl,
        image128Url,
        id,
        title,
        type,
        description,
        category,
        hashtags,
        countryCodes,
        regions,
        status,
        resolutionDate,
        resolutionSource,
        totalVolume,
      ];
}