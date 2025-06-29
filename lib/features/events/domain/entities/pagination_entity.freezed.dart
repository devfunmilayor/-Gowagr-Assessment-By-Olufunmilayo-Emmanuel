// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PaginationEntity {
  int get page => throw _privateConstructorUsedError;
  int get size => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get lastPage => throw _privateConstructorUsedError;

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PaginationEntityCopyWith<PaginationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationEntityCopyWith<$Res> {
  factory $PaginationEntityCopyWith(
          PaginationEntity value, $Res Function(PaginationEntity) then) =
      _$PaginationEntityCopyWithImpl<$Res, PaginationEntity>;
  @useResult
  $Res call({int page, int size, int totalCount, int lastPage});
}

/// @nodoc
class _$PaginationEntityCopyWithImpl<$Res, $Val extends PaginationEntity>
    implements $PaginationEntityCopyWith<$Res> {
  _$PaginationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? totalCount = null,
    Object? lastPage = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationEntityImplCopyWith<$Res>
    implements $PaginationEntityCopyWith<$Res> {
  factory _$$PaginationEntityImplCopyWith(_$PaginationEntityImpl value,
          $Res Function(_$PaginationEntityImpl) then) =
      __$$PaginationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, int size, int totalCount, int lastPage});
}

/// @nodoc
class __$$PaginationEntityImplCopyWithImpl<$Res>
    extends _$PaginationEntityCopyWithImpl<$Res, _$PaginationEntityImpl>
    implements _$$PaginationEntityImplCopyWith<$Res> {
  __$$PaginationEntityImplCopyWithImpl(_$PaginationEntityImpl _value,
      $Res Function(_$PaginationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? size = null,
    Object? totalCount = null,
    Object? lastPage = null,
  }) {
    return _then(_$PaginationEntityImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as int,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      lastPage: null == lastPage
          ? _value.lastPage
          : lastPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PaginationEntityImpl extends _PaginationEntity {
  const _$PaginationEntityImpl(
      {required this.page,
      required this.size,
      required this.totalCount,
      required this.lastPage})
      : super._();

  @override
  final int page;
  @override
  final int size;
  @override
  final int totalCount;
  @override
  final int lastPage;

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationEntityImplCopyWith<_$PaginationEntityImpl> get copyWith =>
      __$$PaginationEntityImplCopyWithImpl<_$PaginationEntityImpl>(
          this, _$identity);
}

abstract class _PaginationEntity extends PaginationEntity {
  const factory _PaginationEntity(
      {required final int page,
      required final int size,
      required final int totalCount,
      required final int lastPage}) = _$PaginationEntityImpl;
  const _PaginationEntity._() : super._();

  @override
  int get page;
  @override
  int get size;
  @override
  int get totalCount;
  @override
  int get lastPage;

  /// Create a copy of PaginationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PaginationEntityImplCopyWith<_$PaginationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
