import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gowagr_assessment/features/events/data/model/market_model.dart';
import 'package:gowagr_assessment/features/events/data/model/pagination_model.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';

part 'event_model.freezed.dart';
part 'event_model.g.dart';

@freezed
class EventModel with _$EventModel {
  const EventModel._();

  const factory EventModel({
    @JsonKey(name: 'createdAt') String? createdAt,
    required List<MarketModel> markets,
    String? resolvedAt,
    @JsonKey(name: 'imageUrl') String? imageUrl,
    @JsonKey(name: 'image128Url') String? image128Url,
    required String id,
    required String title,
    required String type,
    String? description,
    String? category,
    List<String>? hashtags,
    List<String>? countryCodes,
    List<String>? regions,
    String? status,
    @JsonKey(name: 'resolutionDate') String? resolutionDate,
    String? resolutionSource,
    double? totalVolume,
  }) = _EventModel;

  factory EventModel.fromJson(Map<String, dynamic> json) =>
      _$EventModelFromJson(json);

  EventEntity toEntity() {
    return EventEntity(
      createdAt: createdAt != null ? DateTime.tryParse(createdAt!) : null,
      markets: markets.map((m) => m.toEntity()).toList(),
      resolvedAt: resolvedAt != null ? DateTime.tryParse(resolvedAt!) : null,
      imageUrl: imageUrl,
      image128Url: image128Url,
      id: id,
      title: title,
      type: type,
      description: description,
      category: category ?? 'Unknown',
      hashtags: hashtags ?? [],
      countryCodes: countryCodes ?? [],
      regions: regions ?? [],
      status: status ?? 'Unknown',
      resolutionDate:
          resolutionDate != null ? DateTime.tryParse(resolutionDate!) : null,
      resolutionSource: resolutionSource,
      totalVolume: totalVolume ?? 0.0,
    );
  }
}

@freezed
class EventsApiResponse with _$EventsApiResponse {
  const factory EventsApiResponse({
    List<EventModel>? events,
    PaginationModel? pagination,
  }) = _EventsApiResponse;

  factory EventsApiResponse.fromJson(Map<String, dynamic> json) =>
      _$EventsApiResponseFromJson(json);
}
