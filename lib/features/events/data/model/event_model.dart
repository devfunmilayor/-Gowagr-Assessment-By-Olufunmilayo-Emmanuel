import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gowagr_assessment/features/events/data/model/market_model.dart';
import 'package:gowagr_assessment/features/events/data/model/pagination_model.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const EventModel._();
  const factory EventModel(
      {required String createdAt,
      required List<MarketModel> markets,
      String? resolvedAt,
      @JsonKey(name: 'imageUrl') String? imageUrl,
      @JsonKey(name: 'image128Url') String? image128Url,
      required String id,
      required String title,
      required String type,
      String? description,
      required String category,
      required List<String> hashtags,
      required List<String> countryCodes,
      required List<String> regions,
      required String status,
      required String resolutionDate,
      String? resolutionSource,
      required double totalVolume}) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  EventEntity toEntity() {
    return EventEntity(
      createdAt: DateTime.parse(createdAt),
      markets: markets.map((m) => m.toEntity()).toList(),
      resolvedAt: resolvedAt != null ? DateTime.parse(resolvedAt!) : null,
      imageUrl: imageUrl,
      image128Url: image128Url,
      id: id,
      title: title,
      type: type,
      description: description,
      category: category,
      hashtags: hashtags,
      countryCodes: countryCodes,
      regions: regions,
      status: status,
      resolutionDate: DateTime.parse(resolutionDate),
      resolutionSource: resolutionSource,
      totalVolume: totalVolume,
    );
  }
}

@freezed
class EventsApiResponse with _$EventsApiResponse {
  const factory EventsApiResponse({
    required List<EventModel> events,
    required PaginationModel pagination,
  }) = _EventsApiResponse;

  factory EventsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$EventsApiResponseFromJson(json);
}
