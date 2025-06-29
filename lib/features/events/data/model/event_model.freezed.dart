// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EventModel _$EventModelFromJson(Map<String, dynamic> json) {
  return _EventModel.fromJson(json);
}

/// @nodoc
mixin _$EventModel {
  String get createdAt => throw _privateConstructorUsedError;
  List<MarketModel> get markets => throw _privateConstructorUsedError;
  String? get resolvedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'imageUrl')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'image128Url')
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
  String get resolutionDate => throw _privateConstructorUsedError;
  String? get resolutionSource => throw _privateConstructorUsedError;
  double get totalVolume => throw _privateConstructorUsedError;

  /// Serializes this EventModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventModelCopyWith<EventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventModelCopyWith<$Res> {
  factory $EventModelCopyWith(
          EventModel value, $Res Function(EventModel) then) =
      _$EventModelCopyWithImpl<$Res, EventModel>;
  @useResult
  $Res call(
      {String createdAt,
      List<MarketModel> markets,
      String? resolvedAt,
      @JsonKey(name: 'imageUrl') String? imageUrl,
      @JsonKey(name: 'image128Url') String? image128Url,
      String id,
      String title,
      String type,
      String? description,
      String category,
      List<String> hashtags,
      List<String> countryCodes,
      List<String> regions,
      String status,
      String resolutionDate,
      String? resolutionSource,
      double totalVolume});
}

/// @nodoc
class _$EventModelCopyWithImpl<$Res, $Val extends EventModel>
    implements $EventModelCopyWith<$Res> {
  _$EventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
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
    Object? resolutionDate = null,
    Object? resolutionSource = freezed,
    Object? totalVolume = null,
  }) {
    return _then(_value.copyWith(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      markets: null == markets
          ? _value.markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<MarketModel>,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      resolutionDate: null == resolutionDate
          ? _value.resolutionDate
          : resolutionDate // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$EventModelImplCopyWith<$Res>
    implements $EventModelCopyWith<$Res> {
  factory _$$EventModelImplCopyWith(
          _$EventModelImpl value, $Res Function(_$EventModelImpl) then) =
      __$$EventModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String createdAt,
      List<MarketModel> markets,
      String? resolvedAt,
      @JsonKey(name: 'imageUrl') String? imageUrl,
      @JsonKey(name: 'image128Url') String? image128Url,
      String id,
      String title,
      String type,
      String? description,
      String category,
      List<String> hashtags,
      List<String> countryCodes,
      List<String> regions,
      String status,
      String resolutionDate,
      String? resolutionSource,
      double totalVolume});
}

/// @nodoc
class __$$EventModelImplCopyWithImpl<$Res>
    extends _$EventModelCopyWithImpl<$Res, _$EventModelImpl>
    implements _$$EventModelImplCopyWith<$Res> {
  __$$EventModelImplCopyWithImpl(
      _$EventModelImpl _value, $Res Function(_$EventModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = null,
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
    Object? resolutionDate = null,
    Object? resolutionSource = freezed,
    Object? totalVolume = null,
  }) {
    return _then(_$EventModelImpl(
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      markets: null == markets
          ? _value._markets
          : markets // ignore: cast_nullable_to_non_nullable
              as List<MarketModel>,
      resolvedAt: freezed == resolvedAt
          ? _value.resolvedAt
          : resolvedAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      resolutionDate: null == resolutionDate
          ? _value.resolutionDate
          : resolutionDate // ignore: cast_nullable_to_non_nullable
              as String,
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
@JsonSerializable()
class _$EventModelImpl extends _EventModel {
  const _$EventModelImpl(
      {required this.createdAt,
      required final List<MarketModel> markets,
      this.resolvedAt,
      @JsonKey(name: 'imageUrl') this.imageUrl,
      @JsonKey(name: 'image128Url') this.image128Url,
      required this.id,
      required this.title,
      required this.type,
      this.description,
      required this.category,
      required final List<String> hashtags,
      required final List<String> countryCodes,
      required final List<String> regions,
      required this.status,
      required this.resolutionDate,
      this.resolutionSource,
      required this.totalVolume})
      : _markets = markets,
        _hashtags = hashtags,
        _countryCodes = countryCodes,
        _regions = regions,
        super._();

  factory _$EventModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventModelImplFromJson(json);

  @override
  final String createdAt;
  final List<MarketModel> _markets;
  @override
  List<MarketModel> get markets {
    if (_markets is EqualUnmodifiableListView) return _markets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markets);
  }

  @override
  final String? resolvedAt;
  @override
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @override
  @JsonKey(name: 'image128Url')
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
  final String resolutionDate;
  @override
  final String? resolutionSource;
  @override
  final double totalVolume;

  @override
  String toString() {
    return 'EventModel(createdAt: $createdAt, markets: $markets, resolvedAt: $resolvedAt, imageUrl: $imageUrl, image128Url: $image128Url, id: $id, title: $title, type: $type, description: $description, category: $category, hashtags: $hashtags, countryCodes: $countryCodes, regions: $regions, status: $status, resolutionDate: $resolutionDate, resolutionSource: $resolutionSource, totalVolume: $totalVolume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventModelImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other._markets, _markets) &&
            (identical(other.resolvedAt, resolvedAt) ||
                other.resolvedAt == resolvedAt) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.image128Url, image128Url) ||
                other.image128Url == image128Url) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            const DeepCollectionEquality().equals(other._hashtags, _hashtags) &&
            const DeepCollectionEquality()
                .equals(other._countryCodes, _countryCodes) &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resolutionDate, resolutionDate) ||
                other.resolutionDate == resolutionDate) &&
            (identical(other.resolutionSource, resolutionSource) ||
                other.resolutionSource == resolutionSource) &&
            (identical(other.totalVolume, totalVolume) ||
                other.totalVolume == totalVolume));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      createdAt,
      const DeepCollectionEquality().hash(_markets),
      resolvedAt,
      imageUrl,
      image128Url,
      id,
      title,
      type,
      description,
      category,
      const DeepCollectionEquality().hash(_hashtags),
      const DeepCollectionEquality().hash(_countryCodes),
      const DeepCollectionEquality().hash(_regions),
      status,
      resolutionDate,
      resolutionSource,
      totalVolume);

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      __$$EventModelImplCopyWithImpl<_$EventModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventModelImplToJson(
      this,
    );
  }
}

abstract class _EventModel extends EventModel {
  const factory _EventModel(
      {required final String createdAt,
      required final List<MarketModel> markets,
      final String? resolvedAt,
      @JsonKey(name: 'imageUrl') final String? imageUrl,
      @JsonKey(name: 'image128Url') final String? image128Url,
      required final String id,
      required final String title,
      required final String type,
      final String? description,
      required final String category,
      required final List<String> hashtags,
      required final List<String> countryCodes,
      required final List<String> regions,
      required final String status,
      required final String resolutionDate,
      final String? resolutionSource,
      required final double totalVolume}) = _$EventModelImpl;
  const _EventModel._() : super._();

  factory _EventModel.fromJson(Map<String, dynamic> json) =
      _$EventModelImpl.fromJson;

  @override
  String get createdAt;
  @override
  List<MarketModel> get markets;
  @override
  String? get resolvedAt;
  @override
  @JsonKey(name: 'imageUrl')
  String? get imageUrl;
  @override
  @JsonKey(name: 'image128Url')
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
  String get resolutionDate;
  @override
  String? get resolutionSource;
  @override
  double get totalVolume;

  /// Create a copy of EventModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventModelImplCopyWith<_$EventModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventsApiResponse _$EventsApiResponseFromJson(Map<String, dynamic> json) {
  return _EventsApiResponse.fromJson(json);
}

/// @nodoc
mixin _$EventsApiResponse {
  List<EventModel> get events => throw _privateConstructorUsedError;
  PaginationModel get pagination => throw _privateConstructorUsedError;

  /// Serializes this EventsApiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventsApiResponseCopyWith<EventsApiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventsApiResponseCopyWith<$Res> {
  factory $EventsApiResponseCopyWith(
          EventsApiResponse value, $Res Function(EventsApiResponse) then) =
      _$EventsApiResponseCopyWithImpl<$Res, EventsApiResponse>;
  @useResult
  $Res call({List<EventModel> events, PaginationModel pagination});

  $PaginationModelCopyWith<$Res> get pagination;
}

/// @nodoc
class _$EventsApiResponseCopyWithImpl<$Res, $Val extends EventsApiResponse>
    implements $EventsApiResponseCopyWith<$Res> {
  _$EventsApiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? pagination = null,
  }) {
    return _then(_value.copyWith(
      events: null == events
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
    ) as $Val);
  }

  /// Create a copy of EventsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaginationModelCopyWith<$Res> get pagination {
    return $PaginationModelCopyWith<$Res>(_value.pagination, (value) {
      return _then(_value.copyWith(pagination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EventsApiResponseImplCopyWith<$Res>
    implements $EventsApiResponseCopyWith<$Res> {
  factory _$$EventsApiResponseImplCopyWith(_$EventsApiResponseImpl value,
          $Res Function(_$EventsApiResponseImpl) then) =
      __$$EventsApiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<EventModel> events, PaginationModel pagination});

  @override
  $PaginationModelCopyWith<$Res> get pagination;
}

/// @nodoc
class __$$EventsApiResponseImplCopyWithImpl<$Res>
    extends _$EventsApiResponseCopyWithImpl<$Res, _$EventsApiResponseImpl>
    implements _$$EventsApiResponseImplCopyWith<$Res> {
  __$$EventsApiResponseImplCopyWithImpl(_$EventsApiResponseImpl _value,
      $Res Function(_$EventsApiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of EventsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? events = null,
    Object? pagination = null,
  }) {
    return _then(_$EventsApiResponseImpl(
      events: null == events
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventModel>,
      pagination: null == pagination
          ? _value.pagination
          : pagination // ignore: cast_nullable_to_non_nullable
              as PaginationModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EventsApiResponseImpl implements _EventsApiResponse {
  const _$EventsApiResponseImpl(
      {required final List<EventModel> events, required this.pagination})
      : _events = events;

  factory _$EventsApiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventsApiResponseImplFromJson(json);

  final List<EventModel> _events;
  @override
  List<EventModel> get events {
    if (_events is EqualUnmodifiableListView) return _events;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final PaginationModel pagination;

  @override
  String toString() {
    return 'EventsApiResponse(events: $events, pagination: $pagination)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventsApiResponseImpl &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            (identical(other.pagination, pagination) ||
                other.pagination == pagination));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_events), pagination);

  /// Create a copy of EventsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventsApiResponseImplCopyWith<_$EventsApiResponseImpl> get copyWith =>
      __$$EventsApiResponseImplCopyWithImpl<_$EventsApiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventsApiResponseImplToJson(
      this,
    );
  }
}

abstract class _EventsApiResponse implements EventsApiResponse {
  const factory _EventsApiResponse(
      {required final List<EventModel> events,
      required final PaginationModel pagination}) = _$EventsApiResponseImpl;

  factory _EventsApiResponse.fromJson(Map<String, dynamic> json) =
      _$EventsApiResponseImpl.fromJson;

  @override
  List<EventModel> get events;
  @override
  PaginationModel get pagination;

  /// Create a copy of EventsApiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventsApiResponseImplCopyWith<_$EventsApiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
