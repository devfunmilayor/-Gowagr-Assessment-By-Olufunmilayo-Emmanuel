// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EventModelImpl _$$EventModelImplFromJson(Map<String, dynamic> json) =>
    _$EventModelImpl(
      createdAt: json['createdAt'] as String?,
      markets: (json['markets'] as List<dynamic>)
          .map((e) => MarketModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      resolvedAt: json['resolvedAt'] as String?,
      imageUrl: json['imageUrl'] as String?,
      image128Url: json['image128Url'] as String?,
      id: json['id'] as String,
      title: json['title'] as String,
      type: json['type'] as String,
      description: json['description'] as String?,
      category: json['category'] as String?,
      hashtags: (json['hashtags'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      countryCodes: (json['countryCodes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      regions:
          (json['regions'] as List<dynamic>?)?.map((e) => e as String).toList(),
      status: json['status'] as String?,
      resolutionDate: json['resolutionDate'] as String?,
      resolutionSource: json['resolutionSource'] as String?,
      totalVolume: (json['totalVolume'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$EventModelImplToJson(_$EventModelImpl instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'markets': instance.markets,
      'resolvedAt': instance.resolvedAt,
      'imageUrl': instance.imageUrl,
      'image128Url': instance.image128Url,
      'id': instance.id,
      'title': instance.title,
      'type': instance.type,
      'description': instance.description,
      'category': instance.category,
      'hashtags': instance.hashtags,
      'countryCodes': instance.countryCodes,
      'regions': instance.regions,
      'status': instance.status,
      'resolutionDate': instance.resolutionDate,
      'resolutionSource': instance.resolutionSource,
      'totalVolume': instance.totalVolume,
    };

_$EventsApiResponseImpl _$$EventsApiResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$EventsApiResponseImpl(
      events: (json['events'] as List<dynamic>?)
          ?.map((e) => EventModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      pagination: json['pagination'] == null
          ? null
          : PaginationModel.fromJson(
              json['pagination'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$EventsApiResponseImplToJson(
        _$EventsApiResponseImpl instance) =>
    <String, dynamic>{
      'events': instance.events,
      'pagination': instance.pagination,
    };
