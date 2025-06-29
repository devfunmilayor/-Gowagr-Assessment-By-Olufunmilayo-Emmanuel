// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_events_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PublicEventsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)
        loadEvents,
    required TResult Function() loadMoreEvents,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String keyword) searchEvents,
    required TResult Function() toggleTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult? Function()? loadMoreEvents,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String keyword)? searchEvents,
    TResult? Function()? toggleTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult Function()? loadMoreEvents,
    TResult Function(String category)? filterByCategory,
    TResult Function(String keyword)? searchEvents,
    TResult Function()? toggleTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadMoreEvents value) loadMoreEvents,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_SearchEvents value) searchEvents,
    required TResult Function(_ToggleTheme value) toggleTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_SearchEvents value)? searchEvents,
    TResult? Function(_ToggleTheme value)? toggleTheme,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_SearchEvents value)? searchEvents,
    TResult Function(_ToggleTheme value)? toggleTheme,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicEventsEventCopyWith<$Res> {
  factory $PublicEventsEventCopyWith(
          PublicEventsEvent value, $Res Function(PublicEventsEvent) then) =
      _$PublicEventsEventCopyWithImpl<$Res, PublicEventsEvent>;
}

/// @nodoc
class _$PublicEventsEventCopyWithImpl<$Res, $Val extends PublicEventsEvent>
    implements $PublicEventsEventCopyWith<$Res> {
  _$PublicEventsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadEventsImplCopyWith<$Res> {
  factory _$$LoadEventsImplCopyWith(
          _$LoadEventsImpl value, $Res Function(_$LoadEventsImpl) then) =
      __$$LoadEventsImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? keyword, String? category, bool? trending, bool? initialLoad});
}

/// @nodoc
class __$$LoadEventsImplCopyWithImpl<$Res>
    extends _$PublicEventsEventCopyWithImpl<$Res, _$LoadEventsImpl>
    implements _$$LoadEventsImplCopyWith<$Res> {
  __$$LoadEventsImplCopyWithImpl(
      _$LoadEventsImpl _value, $Res Function(_$LoadEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = freezed,
    Object? category = freezed,
    Object? trending = freezed,
    Object? initialLoad = freezed,
  }) {
    return _then(_$LoadEventsImpl(
      keyword: freezed == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      trending: freezed == trending
          ? _value.trending
          : trending // ignore: cast_nullable_to_non_nullable
              as bool?,
      initialLoad: freezed == initialLoad
          ? _value.initialLoad
          : initialLoad // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$LoadEventsImpl implements _LoadEvents {
  const _$LoadEventsImpl(
      {this.keyword, this.category, this.trending, this.initialLoad});

  @override
  final String? keyword;
  @override
  final String? category;
  @override
  final bool? trending;
  @override
  final bool? initialLoad;

  @override
  String toString() {
    return 'PublicEventsEvent.loadEvents(keyword: $keyword, category: $category, trending: $trending, initialLoad: $initialLoad)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadEventsImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.trending, trending) ||
                other.trending == trending) &&
            (identical(other.initialLoad, initialLoad) ||
                other.initialLoad == initialLoad));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, keyword, category, trending, initialLoad);

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadEventsImplCopyWith<_$LoadEventsImpl> get copyWith =>
      __$$LoadEventsImplCopyWithImpl<_$LoadEventsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)
        loadEvents,
    required TResult Function() loadMoreEvents,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String keyword) searchEvents,
    required TResult Function() toggleTheme,
  }) {
    return loadEvents(keyword, category, trending, initialLoad);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult? Function()? loadMoreEvents,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String keyword)? searchEvents,
    TResult? Function()? toggleTheme,
  }) {
    return loadEvents?.call(keyword, category, trending, initialLoad);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult Function()? loadMoreEvents,
    TResult Function(String category)? filterByCategory,
    TResult Function(String keyword)? searchEvents,
    TResult Function()? toggleTheme,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents(keyword, category, trending, initialLoad);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadMoreEvents value) loadMoreEvents,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_SearchEvents value) searchEvents,
    required TResult Function(_ToggleTheme value) toggleTheme,
  }) {
    return loadEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_SearchEvents value)? searchEvents,
    TResult? Function(_ToggleTheme value)? toggleTheme,
  }) {
    return loadEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_SearchEvents value)? searchEvents,
    TResult Function(_ToggleTheme value)? toggleTheme,
    required TResult orElse(),
  }) {
    if (loadEvents != null) {
      return loadEvents(this);
    }
    return orElse();
  }
}

abstract class _LoadEvents implements PublicEventsEvent {
  const factory _LoadEvents(
      {final String? keyword,
      final String? category,
      final bool? trending,
      final bool? initialLoad}) = _$LoadEventsImpl;

  String? get keyword;
  String? get category;
  bool? get trending;
  bool? get initialLoad;

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadEventsImplCopyWith<_$LoadEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreEventsImplCopyWith<$Res> {
  factory _$$LoadMoreEventsImplCopyWith(_$LoadMoreEventsImpl value,
          $Res Function(_$LoadMoreEventsImpl) then) =
      __$$LoadMoreEventsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreEventsImplCopyWithImpl<$Res>
    extends _$PublicEventsEventCopyWithImpl<$Res, _$LoadMoreEventsImpl>
    implements _$$LoadMoreEventsImplCopyWith<$Res> {
  __$$LoadMoreEventsImplCopyWithImpl(
      _$LoadMoreEventsImpl _value, $Res Function(_$LoadMoreEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreEventsImpl implements _LoadMoreEvents {
  const _$LoadMoreEventsImpl();

  @override
  String toString() {
    return 'PublicEventsEvent.loadMoreEvents()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreEventsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)
        loadEvents,
    required TResult Function() loadMoreEvents,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String keyword) searchEvents,
    required TResult Function() toggleTheme,
  }) {
    return loadMoreEvents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult? Function()? loadMoreEvents,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String keyword)? searchEvents,
    TResult? Function()? toggleTheme,
  }) {
    return loadMoreEvents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult Function()? loadMoreEvents,
    TResult Function(String category)? filterByCategory,
    TResult Function(String keyword)? searchEvents,
    TResult Function()? toggleTheme,
    required TResult orElse(),
  }) {
    if (loadMoreEvents != null) {
      return loadMoreEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadMoreEvents value) loadMoreEvents,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_SearchEvents value) searchEvents,
    required TResult Function(_ToggleTheme value) toggleTheme,
  }) {
    return loadMoreEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_SearchEvents value)? searchEvents,
    TResult? Function(_ToggleTheme value)? toggleTheme,
  }) {
    return loadMoreEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_SearchEvents value)? searchEvents,
    TResult Function(_ToggleTheme value)? toggleTheme,
    required TResult orElse(),
  }) {
    if (loadMoreEvents != null) {
      return loadMoreEvents(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreEvents implements PublicEventsEvent {
  const factory _LoadMoreEvents() = _$LoadMoreEventsImpl;
}

/// @nodoc
abstract class _$$FilterByCategoryImplCopyWith<$Res> {
  factory _$$FilterByCategoryImplCopyWith(_$FilterByCategoryImpl value,
          $Res Function(_$FilterByCategoryImpl) then) =
      __$$FilterByCategoryImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String category});
}

/// @nodoc
class __$$FilterByCategoryImplCopyWithImpl<$Res>
    extends _$PublicEventsEventCopyWithImpl<$Res, _$FilterByCategoryImpl>
    implements _$$FilterByCategoryImplCopyWith<$Res> {
  __$$FilterByCategoryImplCopyWithImpl(_$FilterByCategoryImpl _value,
      $Res Function(_$FilterByCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? category = null,
  }) {
    return _then(_$FilterByCategoryImpl(
      null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterByCategoryImpl implements _FilterByCategory {
  const _$FilterByCategoryImpl(this.category);

  @override
  final String category;

  @override
  String toString() {
    return 'PublicEventsEvent.filterByCategory(category: $category)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterByCategoryImpl &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @override
  int get hashCode => Object.hash(runtimeType, category);

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterByCategoryImplCopyWith<_$FilterByCategoryImpl> get copyWith =>
      __$$FilterByCategoryImplCopyWithImpl<_$FilterByCategoryImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)
        loadEvents,
    required TResult Function() loadMoreEvents,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String keyword) searchEvents,
    required TResult Function() toggleTheme,
  }) {
    return filterByCategory(category);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult? Function()? loadMoreEvents,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String keyword)? searchEvents,
    TResult? Function()? toggleTheme,
  }) {
    return filterByCategory?.call(category);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult Function()? loadMoreEvents,
    TResult Function(String category)? filterByCategory,
    TResult Function(String keyword)? searchEvents,
    TResult Function()? toggleTheme,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(category);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadMoreEvents value) loadMoreEvents,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_SearchEvents value) searchEvents,
    required TResult Function(_ToggleTheme value) toggleTheme,
  }) {
    return filterByCategory(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_SearchEvents value)? searchEvents,
    TResult? Function(_ToggleTheme value)? toggleTheme,
  }) {
    return filterByCategory?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_SearchEvents value)? searchEvents,
    TResult Function(_ToggleTheme value)? toggleTheme,
    required TResult orElse(),
  }) {
    if (filterByCategory != null) {
      return filterByCategory(this);
    }
    return orElse();
  }
}

abstract class _FilterByCategory implements PublicEventsEvent {
  const factory _FilterByCategory(final String category) =
      _$FilterByCategoryImpl;

  String get category;

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterByCategoryImplCopyWith<_$FilterByCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SearchEventsImplCopyWith<$Res> {
  factory _$$SearchEventsImplCopyWith(
          _$SearchEventsImpl value, $Res Function(_$SearchEventsImpl) then) =
      __$$SearchEventsImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String keyword});
}

/// @nodoc
class __$$SearchEventsImplCopyWithImpl<$Res>
    extends _$PublicEventsEventCopyWithImpl<$Res, _$SearchEventsImpl>
    implements _$$SearchEventsImplCopyWith<$Res> {
  __$$SearchEventsImplCopyWithImpl(
      _$SearchEventsImpl _value, $Res Function(_$SearchEventsImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyword = null,
  }) {
    return _then(_$SearchEventsImpl(
      null == keyword
          ? _value.keyword
          : keyword // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchEventsImpl implements _SearchEvents {
  const _$SearchEventsImpl(this.keyword);

  @override
  final String keyword;

  @override
  String toString() {
    return 'PublicEventsEvent.searchEvents(keyword: $keyword)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchEventsImpl &&
            (identical(other.keyword, keyword) || other.keyword == keyword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, keyword);

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchEventsImplCopyWith<_$SearchEventsImpl> get copyWith =>
      __$$SearchEventsImplCopyWithImpl<_$SearchEventsImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)
        loadEvents,
    required TResult Function() loadMoreEvents,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String keyword) searchEvents,
    required TResult Function() toggleTheme,
  }) {
    return searchEvents(keyword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult? Function()? loadMoreEvents,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String keyword)? searchEvents,
    TResult? Function()? toggleTheme,
  }) {
    return searchEvents?.call(keyword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult Function()? loadMoreEvents,
    TResult Function(String category)? filterByCategory,
    TResult Function(String keyword)? searchEvents,
    TResult Function()? toggleTheme,
    required TResult orElse(),
  }) {
    if (searchEvents != null) {
      return searchEvents(keyword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadMoreEvents value) loadMoreEvents,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_SearchEvents value) searchEvents,
    required TResult Function(_ToggleTheme value) toggleTheme,
  }) {
    return searchEvents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_SearchEvents value)? searchEvents,
    TResult? Function(_ToggleTheme value)? toggleTheme,
  }) {
    return searchEvents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_SearchEvents value)? searchEvents,
    TResult Function(_ToggleTheme value)? toggleTheme,
    required TResult orElse(),
  }) {
    if (searchEvents != null) {
      return searchEvents(this);
    }
    return orElse();
  }
}

abstract class _SearchEvents implements PublicEventsEvent {
  const factory _SearchEvents(final String keyword) = _$SearchEventsImpl;

  String get keyword;

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchEventsImplCopyWith<_$SearchEventsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ToggleThemeImplCopyWith<$Res> {
  factory _$$ToggleThemeImplCopyWith(
          _$ToggleThemeImpl value, $Res Function(_$ToggleThemeImpl) then) =
      __$$ToggleThemeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ToggleThemeImplCopyWithImpl<$Res>
    extends _$PublicEventsEventCopyWithImpl<$Res, _$ToggleThemeImpl>
    implements _$$ToggleThemeImplCopyWith<$Res> {
  __$$ToggleThemeImplCopyWithImpl(
      _$ToggleThemeImpl _value, $Res Function(_$ToggleThemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PublicEventsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ToggleThemeImpl implements _ToggleTheme {
  const _$ToggleThemeImpl();

  @override
  String toString() {
    return 'PublicEventsEvent.toggleTheme()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ToggleThemeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)
        loadEvents,
    required TResult Function() loadMoreEvents,
    required TResult Function(String category) filterByCategory,
    required TResult Function(String keyword) searchEvents,
    required TResult Function() toggleTheme,
  }) {
    return toggleTheme();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult? Function()? loadMoreEvents,
    TResult? Function(String category)? filterByCategory,
    TResult? Function(String keyword)? searchEvents,
    TResult? Function()? toggleTheme,
  }) {
    return toggleTheme?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? keyword, String? category, bool? trending,
            bool? initialLoad)?
        loadEvents,
    TResult Function()? loadMoreEvents,
    TResult Function(String category)? filterByCategory,
    TResult Function(String keyword)? searchEvents,
    TResult Function()? toggleTheme,
    required TResult orElse(),
  }) {
    if (toggleTheme != null) {
      return toggleTheme();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadEvents value) loadEvents,
    required TResult Function(_LoadMoreEvents value) loadMoreEvents,
    required TResult Function(_FilterByCategory value) filterByCategory,
    required TResult Function(_SearchEvents value) searchEvents,
    required TResult Function(_ToggleTheme value) toggleTheme,
  }) {
    return toggleTheme(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadEvents value)? loadEvents,
    TResult? Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult? Function(_FilterByCategory value)? filterByCategory,
    TResult? Function(_SearchEvents value)? searchEvents,
    TResult? Function(_ToggleTheme value)? toggleTheme,
  }) {
    return toggleTheme?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadEvents value)? loadEvents,
    TResult Function(_LoadMoreEvents value)? loadMoreEvents,
    TResult Function(_FilterByCategory value)? filterByCategory,
    TResult Function(_SearchEvents value)? searchEvents,
    TResult Function(_ToggleTheme value)? toggleTheme,
    required TResult orElse(),
  }) {
    if (toggleTheme != null) {
      return toggleTheme(this);
    }
    return orElse();
  }
}

abstract class _ToggleTheme implements PublicEventsEvent {
  const factory _ToggleTheme() = _$ToggleThemeImpl;
}
