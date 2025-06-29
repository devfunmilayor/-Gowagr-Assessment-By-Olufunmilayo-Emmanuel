// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'market_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MarketModel _$MarketModelFromJson(Map<String, dynamic> json) {
  return _MarketModel.fromJson(json);
}

/// @nodoc
mixin _$MarketModel {
  String? get id => throw _privateConstructorUsedError; // Made nullable
  String? get title => throw _privateConstructorUsedError; // Made nullable
  String? get rules => throw _privateConstructorUsedError; // Made nullable
  @JsonKey(name: 'imageUrl')
  String? get imageUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'image128Url')
  String? get image128Url => throw _privateConstructorUsedError;
  double? get yesBuyPrice =>
      throw _privateConstructorUsedError; // Made nullable
  double? get noBuyPrice => throw _privateConstructorUsedError; // Made nullable
  int? get yesPriceForEstimate =>
      throw _privateConstructorUsedError; // Made nullable
  int? get noPriceForEstimate =>
      throw _privateConstructorUsedError; // Made nullable
  String? get status => throw _privateConstructorUsedError; // Made nullable
  String? get resolvedOutcome => throw _privateConstructorUsedError;
  double? get volumeValueYes =>
      throw _privateConstructorUsedError; // Made nullable
  double? get volumeValueNo =>
      throw _privateConstructorUsedError; // Made nullable
  int? get yesProfitForEstimate =>
      throw _privateConstructorUsedError; // Made nullable
  int? get noProfitForEstimate => throw _privateConstructorUsedError;

  /// Serializes this MarketModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MarketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MarketModelCopyWith<MarketModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MarketModelCopyWith<$Res> {
  factory $MarketModelCopyWith(
          MarketModel value, $Res Function(MarketModel) then) =
      _$MarketModelCopyWithImpl<$Res, MarketModel>;
  @useResult
  $Res call(
      {String? id,
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
      int? noProfitForEstimate});
}

/// @nodoc
class _$MarketModelCopyWithImpl<$Res, $Val extends MarketModel>
    implements $MarketModelCopyWith<$Res> {
  _$MarketModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MarketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? rules = freezed,
    Object? imageUrl = freezed,
    Object? image128Url = freezed,
    Object? yesBuyPrice = freezed,
    Object? noBuyPrice = freezed,
    Object? yesPriceForEstimate = freezed,
    Object? noPriceForEstimate = freezed,
    Object? status = freezed,
    Object? resolvedOutcome = freezed,
    Object? volumeValueYes = freezed,
    Object? volumeValueNo = freezed,
    Object? yesProfitForEstimate = freezed,
    Object? noProfitForEstimate = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image128Url: freezed == image128Url
          ? _value.image128Url
          : image128Url // ignore: cast_nullable_to_non_nullable
              as String?,
      yesBuyPrice: freezed == yesBuyPrice
          ? _value.yesBuyPrice
          : yesBuyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      noBuyPrice: freezed == noBuyPrice
          ? _value.noBuyPrice
          : noBuyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      yesPriceForEstimate: freezed == yesPriceForEstimate
          ? _value.yesPriceForEstimate
          : yesPriceForEstimate // ignore: cast_nullable_to_non_nullable
              as int?,
      noPriceForEstimate: freezed == noPriceForEstimate
          ? _value.noPriceForEstimate
          : noPriceForEstimate // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedOutcome: freezed == resolvedOutcome
          ? _value.resolvedOutcome
          : resolvedOutcome // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeValueYes: freezed == volumeValueYes
          ? _value.volumeValueYes
          : volumeValueYes // ignore: cast_nullable_to_non_nullable
              as double?,
      volumeValueNo: freezed == volumeValueNo
          ? _value.volumeValueNo
          : volumeValueNo // ignore: cast_nullable_to_non_nullable
              as double?,
      yesProfitForEstimate: freezed == yesProfitForEstimate
          ? _value.yesProfitForEstimate
          : yesProfitForEstimate // ignore: cast_nullable_to_non_nullable
              as int?,
      noProfitForEstimate: freezed == noProfitForEstimate
          ? _value.noProfitForEstimate
          : noProfitForEstimate // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MarketModelImplCopyWith<$Res>
    implements $MarketModelCopyWith<$Res> {
  factory _$$MarketModelImplCopyWith(
          _$MarketModelImpl value, $Res Function(_$MarketModelImpl) then) =
      __$$MarketModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
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
      int? noProfitForEstimate});
}

/// @nodoc
class __$$MarketModelImplCopyWithImpl<$Res>
    extends _$MarketModelCopyWithImpl<$Res, _$MarketModelImpl>
    implements _$$MarketModelImplCopyWith<$Res> {
  __$$MarketModelImplCopyWithImpl(
      _$MarketModelImpl _value, $Res Function(_$MarketModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MarketModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? rules = freezed,
    Object? imageUrl = freezed,
    Object? image128Url = freezed,
    Object? yesBuyPrice = freezed,
    Object? noBuyPrice = freezed,
    Object? yesPriceForEstimate = freezed,
    Object? noPriceForEstimate = freezed,
    Object? status = freezed,
    Object? resolvedOutcome = freezed,
    Object? volumeValueYes = freezed,
    Object? volumeValueNo = freezed,
    Object? yesProfitForEstimate = freezed,
    Object? noProfitForEstimate = freezed,
  }) {
    return _then(_$MarketModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      rules: freezed == rules
          ? _value.rules
          : rules // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      image128Url: freezed == image128Url
          ? _value.image128Url
          : image128Url // ignore: cast_nullable_to_non_nullable
              as String?,
      yesBuyPrice: freezed == yesBuyPrice
          ? _value.yesBuyPrice
          : yesBuyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      noBuyPrice: freezed == noBuyPrice
          ? _value.noBuyPrice
          : noBuyPrice // ignore: cast_nullable_to_non_nullable
              as double?,
      yesPriceForEstimate: freezed == yesPriceForEstimate
          ? _value.yesPriceForEstimate
          : yesPriceForEstimate // ignore: cast_nullable_to_non_nullable
              as int?,
      noPriceForEstimate: freezed == noPriceForEstimate
          ? _value.noPriceForEstimate
          : noPriceForEstimate // ignore: cast_nullable_to_non_nullable
              as int?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      resolvedOutcome: freezed == resolvedOutcome
          ? _value.resolvedOutcome
          : resolvedOutcome // ignore: cast_nullable_to_non_nullable
              as String?,
      volumeValueYes: freezed == volumeValueYes
          ? _value.volumeValueYes
          : volumeValueYes // ignore: cast_nullable_to_non_nullable
              as double?,
      volumeValueNo: freezed == volumeValueNo
          ? _value.volumeValueNo
          : volumeValueNo // ignore: cast_nullable_to_non_nullable
              as double?,
      yesProfitForEstimate: freezed == yesProfitForEstimate
          ? _value.yesProfitForEstimate
          : yesProfitForEstimate // ignore: cast_nullable_to_non_nullable
              as int?,
      noProfitForEstimate: freezed == noProfitForEstimate
          ? _value.noProfitForEstimate
          : noProfitForEstimate // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MarketModelImpl extends _MarketModel {
  const _$MarketModelImpl(
      {this.id,
      this.title,
      this.rules,
      @JsonKey(name: 'imageUrl') this.imageUrl,
      @JsonKey(name: 'image128Url') this.image128Url,
      this.yesBuyPrice,
      this.noBuyPrice,
      this.yesPriceForEstimate,
      this.noPriceForEstimate,
      this.status,
      this.resolvedOutcome,
      this.volumeValueYes,
      this.volumeValueNo,
      this.yesProfitForEstimate,
      this.noProfitForEstimate})
      : super._();

  factory _$MarketModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MarketModelImplFromJson(json);

  @override
  final String? id;
// Made nullable
  @override
  final String? title;
// Made nullable
  @override
  final String? rules;
// Made nullable
  @override
  @JsonKey(name: 'imageUrl')
  final String? imageUrl;
  @override
  @JsonKey(name: 'image128Url')
  final String? image128Url;
  @override
  final double? yesBuyPrice;
// Made nullable
  @override
  final double? noBuyPrice;
// Made nullable
  @override
  final int? yesPriceForEstimate;
// Made nullable
  @override
  final int? noPriceForEstimate;
// Made nullable
  @override
  final String? status;
// Made nullable
  @override
  final String? resolvedOutcome;
  @override
  final double? volumeValueYes;
// Made nullable
  @override
  final double? volumeValueNo;
// Made nullable
  @override
  final int? yesProfitForEstimate;
// Made nullable
  @override
  final int? noProfitForEstimate;

  @override
  String toString() {
    return 'MarketModel(id: $id, title: $title, rules: $rules, imageUrl: $imageUrl, image128Url: $image128Url, yesBuyPrice: $yesBuyPrice, noBuyPrice: $noBuyPrice, yesPriceForEstimate: $yesPriceForEstimate, noPriceForEstimate: $noPriceForEstimate, status: $status, resolvedOutcome: $resolvedOutcome, volumeValueYes: $volumeValueYes, volumeValueNo: $volumeValueNo, yesProfitForEstimate: $yesProfitForEstimate, noProfitForEstimate: $noProfitForEstimate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MarketModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.rules, rules) || other.rules == rules) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.image128Url, image128Url) ||
                other.image128Url == image128Url) &&
            (identical(other.yesBuyPrice, yesBuyPrice) ||
                other.yesBuyPrice == yesBuyPrice) &&
            (identical(other.noBuyPrice, noBuyPrice) ||
                other.noBuyPrice == noBuyPrice) &&
            (identical(other.yesPriceForEstimate, yesPriceForEstimate) ||
                other.yesPriceForEstimate == yesPriceForEstimate) &&
            (identical(other.noPriceForEstimate, noPriceForEstimate) ||
                other.noPriceForEstimate == noPriceForEstimate) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.resolvedOutcome, resolvedOutcome) ||
                other.resolvedOutcome == resolvedOutcome) &&
            (identical(other.volumeValueYes, volumeValueYes) ||
                other.volumeValueYes == volumeValueYes) &&
            (identical(other.volumeValueNo, volumeValueNo) ||
                other.volumeValueNo == volumeValueNo) &&
            (identical(other.yesProfitForEstimate, yesProfitForEstimate) ||
                other.yesProfitForEstimate == yesProfitForEstimate) &&
            (identical(other.noProfitForEstimate, noProfitForEstimate) ||
                other.noProfitForEstimate == noProfitForEstimate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
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
      noProfitForEstimate);

  /// Create a copy of MarketModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MarketModelImplCopyWith<_$MarketModelImpl> get copyWith =>
      __$$MarketModelImplCopyWithImpl<_$MarketModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MarketModelImplToJson(
      this,
    );
  }
}

abstract class _MarketModel extends MarketModel {
  const factory _MarketModel(
      {final String? id,
      final String? title,
      final String? rules,
      @JsonKey(name: 'imageUrl') final String? imageUrl,
      @JsonKey(name: 'image128Url') final String? image128Url,
      final double? yesBuyPrice,
      final double? noBuyPrice,
      final int? yesPriceForEstimate,
      final int? noPriceForEstimate,
      final String? status,
      final String? resolvedOutcome,
      final double? volumeValueYes,
      final double? volumeValueNo,
      final int? yesProfitForEstimate,
      final int? noProfitForEstimate}) = _$MarketModelImpl;
  const _MarketModel._() : super._();

  factory _MarketModel.fromJson(Map<String, dynamic> json) =
      _$MarketModelImpl.fromJson;

  @override
  String? get id; // Made nullable
  @override
  String? get title; // Made nullable
  @override
  String? get rules; // Made nullable
  @override
  @JsonKey(name: 'imageUrl')
  String? get imageUrl;
  @override
  @JsonKey(name: 'image128Url')
  String? get image128Url;
  @override
  double? get yesBuyPrice; // Made nullable
  @override
  double? get noBuyPrice; // Made nullable
  @override
  int? get yesPriceForEstimate; // Made nullable
  @override
  int? get noPriceForEstimate; // Made nullable
  @override
  String? get status; // Made nullable
  @override
  String? get resolvedOutcome;
  @override
  double? get volumeValueYes; // Made nullable
  @override
  double? get volumeValueNo; // Made nullable
  @override
  int? get yesProfitForEstimate; // Made nullable
  @override
  int? get noProfitForEstimate;

  /// Create a copy of MarketModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MarketModelImplCopyWith<_$MarketModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
