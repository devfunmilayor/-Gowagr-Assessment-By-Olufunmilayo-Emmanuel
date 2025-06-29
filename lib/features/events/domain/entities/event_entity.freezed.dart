// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EventEntity {
  DateTime? get createdAt => throw _privateConstructorUsedError;
  List<MarketEntity> get markets => throw _privateConstructorUsedError;
  DateTime? get resolvedAt => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  String? get image128Url => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  List<String> get hashtags => throw _privateConstructorUsedError;
  List<String> get countryCodes => throw _privateConstructorUsedError;
  List<String> get regions => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get resolutionDate =>
      throw _privateConstructorUsedError; // Made nullable
  String? get resolutionSource => throw _privateConstructorUsedError;
  double get totalVolume => throw _privateConstructorUsedError;

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventEntityCopyWith<EventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEntityCopyWith<$Res> {
  factory $EventEntityCopyWith(
          EventEntity value, $Res Function(EventEntity) then) =
      _$EventEntityCopyWithImpl<$Res, EventEntity>;
  @useResult
  $Res call(
      {DateTime? createdAt,
      List<MarketEntity> markets,
      DateTime? resolvedAt,
      String? imageUrl,
      String? image128Url,
      String id,
      String title,
      String type,
      String? description,
      String category,
      List<String> hashtags,
      List<String> countryCodes,
      List<String> regions,
      String status,
      DateTime? resolutionDate,
      String? resolutionSource,
      double totalVolume});
}

/// @nodoc
class _$EventEntityCopyWithImpl<$Res, $Val extends EventEntity>
    implements $EventEntityCopyWith<$Res> {
  _$EventEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? markets = null,
    Object? resolvedAt = freezed,
    Object? imageUrl = freezed,
    Object? image128Url = freezed,
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? description = freezed,
    Object? category = null,
    Object? hashtags = null,
    Object? countryCodes = null,
    Object? regions = null,
    Object? status = null,
    Object? resolutionDate = freezed,
    Object? resolutionSource = freezed,
    Object? totalVolume = null,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      markets: null == markets
          ? _value.markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<MarketEntity>,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image128Url: freezed == image128Url
          ? _value.image128Url
          : image128Url // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      hashtags: null == hashtags
          ? _value.hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      countryCodes: null == countryCodes
          ? _value.countryCodes
          : countryCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      regions: null == regions
          ? _value.regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      resolutionDate: freezed == resolutionDate
          ? _value.resolutionDate
          : resolutionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resolutionSource: freezed == resolutionSource
          ? _value.resolutionSource
          : resolutionSource // ignore: cast_nullable_to_non_nullable
              as String?,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EventEntityImplCopyWith<$Res>
    implements $EventEntityCopyWith<$Res> {
  factory _$$EventEntityImplCopyWith(
          _$EventEntityImpl value, $Res Function(_$EventEntityImpl) then) =
      __$$EventEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DateTime? createdAt,
      List<MarketEntity> markets,
      DateTime? resolvedAt,
      String? imageUrl,
      String? image128Url,
      String id,
      String title,
      String type,
      String? description,
      String category,
      List<String> hashtags,
      List<String> countryCodes,
      List<String> regions,
      String status,
      DateTime? resolutionDate,
      String? resolutionSource,
      double totalVolume});
}

/// @nodoc
class __$$EventEntityImplCopyWithImpl<$Res>
    extends _$EventEntityCopyWithImpl<$Res, _$EventEntityImpl>
    implements _$$EventEntityImplCopyWith<$Res> {
  __$$EventEntityImplCopyWithImpl(
      _$EventEntityImpl _value, $Res Function(_$EventEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? markets = null,
    Object? resolvedAt = freezed,
    Object? imageUrl = freezed,
    Object? image128Url = freezed,
    Object? id = null,
    Object? title = null,
    Object? type = null,
    Object? description = freezed,
    Object? category = null,
    Object? hashtags = null,
    Object? countryCodes = null,
    Object? regions = null,
    Object? status = null,
    Object? resolutionDate = freezed,
    Object? resolutionSource = freezed,
    Object? totalVolume = null,
  }) {
    return _then(_$EventEntityImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      markets: null == markets
          ? _value._markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<MarketEntity>,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image128Url: freezed == image128Url
          ? _value.image128Url
          : image128Url // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      hashtags: null == hashtags
          ? _value._hashtags
          : hashtags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      countryCodes: null == countryCodes
          ? _value._countryCodes
          : countryCodes // ignore: cast_nullable_to_non_nullable
              as List<String>,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<String>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      resolutionDate: freezed == resolutionDate
          ? _value.resolutionDate
          : resolutionDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      resolutionSource: freezed == resolutionSource
          ? _value.resolutionSource
          : resolutionSource // ignore: cast_nullable_to_non_nullable
              as String?,
      totalVolume: null == totalVolume
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$EventEntityImpl extends _EventEntity {
  const _$EventEntityImpl(
      {this.createdAt,
      required final List<MarketEntity> markets,
      this.resolvedAt,
      this.imageUrl,
      this.image128Url,
      required this.id,
      required this.title,
      required this.type,
      this.description,
      required this.category,
      required final List<String> hashtags,
      required final List<String> countryCodes,
      required final List<String> regions,
      required this.status,
      this.resolutionDate,
      this.resolutionSource,
      required this.totalVolume})
      : _markets = markets,
        _hashtags = hashtags,
        _countryCodes = countryCodes,
        _regions = regions,
        super._();

  @override
  final DateTime? createdAt;
  final List<MarketEntity> _markets;
  @override
  List<MarketEntity> get markets {
    if (_markets is EqualUnmodifiableListView) return _markets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markets);
  }

  @override
  final DateTime? resolvedAt;
  @override
  final String? imageUrl;
  @override
  final String? image128Url;
  @override
  final String id;
  @override
  final String title;
  @override
  final String type;
  @override
  final String? description;
  @override
  final String category;
  final List<String> _hashtags;
  @override
  List<String> get hashtags {
    if (_hashtags is EqualUnmodifiableListView) return _hashtags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_hashtags);
  }

  final List<String> _countryCodes;
  @override
  List<String> get countryCodes {
    if (_countryCodes is EqualUnmodifiableListView) return _countryCodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_countryCodes);
  }

  final List<String> _regions;
  @override
  List<String> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  @override
  final String status;
  @override
  final DateTime? resolutionDate;
// Made nullable
  @override
  final String? resolutionSource;
  @override
  final double totalVolume;

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventEntityImplCopyWith<_$EventEntityImpl> get copyWith =>
      __$$EventEntityImplCopyWithImpl<_$EventEntityImpl>(this, _$identity);
}

abstract class _EventEntity extends EventEntity {
  const factory _EventEntity(
      {final DateTime? createdAt,
      required final List<MarketEntity> markets,
      final DateTime? resolvedAt,
      final String? imageUrl,
      final String? image128Url,
      required final String id,
      required final String title,
      required final String type,
      final String? description,
      required final String category,
      required final List<String> hashtags,
      required final List<String> countryCodes,
      required final List<String> regions,
      required final String status,
      final DateTime? resolutionDate,
      final String? resolutionSource,
      required final double totalVolume}) = _$EventEntityImpl;
  const _EventEntity._() : super._();

  @override
  DateTime? get createdAt;
  @override
  List<MarketEntity> get markets;
  @override
  DateTime? get resolvedAt;
  @override
  String? get imageUrl;
  @override
  String? get image128Url;
  @override
  String get id;
  @override
  String get title;
  @override
  String get type;
  @override
  String? get description;
  @override
  String get category;
  @override
  List<String> get hashtags;
  @override
  List<String> get countryCodes;
  @override
  List<String> get regions;
  @override
  String get status;
  @override
  DateTime? get resolutionDate; // Made nullable
  @override
  String? get resolutionSource;
  @override
  double get totalVolume;

  /// Create a copy of EventEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventEntityImplCopyWith<_$EventEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
