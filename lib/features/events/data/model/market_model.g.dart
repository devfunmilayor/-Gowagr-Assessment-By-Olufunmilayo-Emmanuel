// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'market_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MarketModelImpl _$$MarketModelImplFromJson(Map<String, dynamic> json) =>
    _$MarketModelImpl(
      id: json['id'] as String?,
      title: json['title'] as String?,
      rules: json['rules'] as String?,
      imageUrl: json['imageUrl'] as String?,
      image128Url: json['image128Url'] as String?,
      yesBuyPrice: (json['yesBuyPrice'] as num?)?.toDouble(),
      noBuyPrice: (json['noBuyPrice'] as num?)?.toDouble(),
      yesPriceForEstimate: (json['yesPriceForEstimate'] as num?)?.toInt(),
      noPriceForEstimate: (json['noPriceForEstimate'] as num?)?.toInt(),
      status: json['status'] as String?,
      resolvedOutcome: json['resolvedOutcome'] as String?,
      volumeValueYes: (json['volumeValueYes'] as num?)?.toDouble(),
      volumeValueNo: (json['volumeValueNo'] as num?)?.toDouble(),
      yesProfitForEstimate: (json['yesProfitForEstimate'] as num?)?.toInt(),
      noProfitForEstimate: (json['noProfitForEstimate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MarketModelImplToJson(_$MarketModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'rules': instance.rules,
      'imageUrl': instance.imageUrl,
      'image128Url': instance.image128Url,
      'yesBuyPrice': instance.yesBuyPrice,
      'noBuyPrice': instance.noBuyPrice,
      'yesPriceForEstimate': instance.yesPriceForEstimate,
      'noPriceForEstimate': instance.noPriceForEstimate,
      'status': instance.status,
      'resolvedOutcome': instance.resolvedOutcome,
      'volumeValueYes': instance.volumeValueYes,
      'volumeValueNo': instance.volumeValueNo,
      'yesProfitForEstimate': instance.yesProfitForEstimate,
      'noProfitForEstimate': instance.noProfitForEstimate,
    };
