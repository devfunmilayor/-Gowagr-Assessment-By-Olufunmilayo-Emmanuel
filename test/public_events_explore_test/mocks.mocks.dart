// Mocks generated by Mockito 5.4.4 from annotations
// in gowagr_assessment/test/public_events_explore_test/mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;

import 'package:dartz/dartz.dart' as _i2;
import 'package:flutter_bloc/flutter_bloc.dart' as _i16;
import 'package:gowagr_assessment/core/error/app_error.dart' as _i7;
import 'package:gowagr_assessment/core/network/network_check.dart' as _i12;
import 'package:gowagr_assessment/features/events/data/datasources/event_local_data_source.dart'
    as _i11;
import 'package:gowagr_assessment/features/events/data/datasources/event_remote_data_source.dart'
    as _i10;
import 'package:gowagr_assessment/features/events/data/model/event_model.dart'
    as _i3;
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart'
    as _i8;
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart'
    as _i9;
import 'package:gowagr_assessment/features/events/domain/repositories/event_repository.dart'
    as _i4;
import 'package:gowagr_assessment/features/events/domain/usecases/gowagr_events_usecases.dart'
    as _i13;
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_bloc.dart'
    as _i14;
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_event.dart'
    as _i15;
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_state.dart'
    as _i5;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEventsApiResponse_1 extends _i1.SmartFake
    implements _i3.EventsApiResponse {
  _FakeEventsApiResponse_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeEventRepository_2 extends _i1.SmartFake
    implements _i4.EventRepository {
  _FakeEventRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakePublicEventsState_3 extends _i1.SmartFake
    implements _i5.PublicEventsState {
  _FakePublicEventsState_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [EventRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockEventRepository extends _i1.Mock implements _i4.EventRepository {
  MockEventRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<
      _i2.Either<_i7.Failure,
          (List<_i8.EventEntity>, _i9.PaginationEntity)>> getPublicEvents({
    String? keyword,
    bool? trending,
    required int? page,
    required int? size,
    String? category,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPublicEvents,
          [],
          {
            #keyword: keyword,
            #trending: trending,
            #page: page,
            #size: size,
            #category: category,
          },
        ),
        returnValue: _i6.Future<
                _i2.Either<_i7.Failure,
                    (List<_i8.EventEntity>, _i9.PaginationEntity)>>.value(
            _FakeEither_0<_i7.Failure,
                (List<_i8.EventEntity>, _i9.PaginationEntity)>(
          this,
          Invocation.method(
            #getPublicEvents,
            [],
            {
              #keyword: keyword,
              #trending: trending,
              #page: page,
              #size: size,
              #category: category,
            },
          ),
        )),
      ) as _i6.Future<
          _i2
          .Either<_i7.Failure, (List<_i8.EventEntity>, _i9.PaginationEntity)>>);
}

/// A class which mocks [EventRemoteDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockEventRemoteDataSource extends _i1.Mock
    implements _i10.EventRemoteDataSource {
  MockEventRemoteDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<_i3.EventsApiResponse> getPublicEvents({
    String? keyword,
    bool? trending,
    int? size,
    int? page,
    String? category,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getPublicEvents,
          [],
          {
            #keyword: keyword,
            #trending: trending,
            #size: size,
            #page: page,
            #category: category,
          },
        ),
        returnValue:
            _i6.Future<_i3.EventsApiResponse>.value(_FakeEventsApiResponse_1(
          this,
          Invocation.method(
            #getPublicEvents,
            [],
            {
              #keyword: keyword,
              #trending: trending,
              #size: size,
              #page: page,
              #category: category,
            },
          ),
        )),
      ) as _i6.Future<_i3.EventsApiResponse>);
}

/// A class which mocks [EventLocalDataSource].
///
/// See the documentation for Mockito's code generation for more information.
class MockEventLocalDataSource extends _i1.Mock
    implements _i11.EventLocalDataSource {
  MockEventLocalDataSource() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<void> cacheEvents(_i3.EventsApiResponse? events) =>
      (super.noSuchMethod(
        Invocation.method(
          #cacheEvents,
          [events],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  _i6.Future<_i3.EventsApiResponse> getCachedEvents() => (super.noSuchMethod(
        Invocation.method(
          #getCachedEvents,
          [],
        ),
        returnValue:
            _i6.Future<_i3.EventsApiResponse>.value(_FakeEventsApiResponse_1(
          this,
          Invocation.method(
            #getCachedEvents,
            [],
          ),
        )),
      ) as _i6.Future<_i3.EventsApiResponse>);

  @override
  _i6.Future<bool> isCacheValid() => (super.noSuchMethod(
        Invocation.method(
          #isCacheValid,
          [],
        ),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [NetworkInfo].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetworkInfo extends _i1.Mock implements _i12.NetworkInfo {
  MockNetworkInfo() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i6.Future<bool> get isConnected => (super.noSuchMethod(
        Invocation.getter(#isConnected),
        returnValue: _i6.Future<bool>.value(false),
      ) as _i6.Future<bool>);
}

/// A class which mocks [GetPublicEventsUsecase].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetPublicEventsUsecase extends _i1.Mock
    implements _i13.GetPublicEventsUsecase {
  MockGetPublicEventsUsecase() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.EventRepository get repository => (super.noSuchMethod(
        Invocation.getter(#repository),
        returnValue: _FakeEventRepository_2(
          this,
          Invocation.getter(#repository),
        ),
      ) as _i4.EventRepository);

  @override
  _i6.Future<
      _i2
      .Either<_i7.Failure, (List<_i8.EventEntity>, _i9.PaginationEntity)>> call(
          _i13.GetEventsParams? params) =>
      (super.noSuchMethod(
        Invocation.method(
          #call,
          [params],
        ),
        returnValue: _i6.Future<
                _i2.Either<_i7.Failure,
                    (List<_i8.EventEntity>, _i9.PaginationEntity)>>.value(
            _FakeEither_0<_i7.Failure,
                (List<_i8.EventEntity>, _i9.PaginationEntity)>(
          this,
          Invocation.method(
            #call,
            [params],
          ),
        )),
      ) as _i6.Future<
          _i2
          .Either<_i7.Failure, (List<_i8.EventEntity>, _i9.PaginationEntity)>>);
}

/// A class which mocks [PublicEventBloc].
///
/// See the documentation for Mockito's code generation for more information.
class MockPublicEventBloc extends _i1.Mock implements _i14.PublicEventBloc {
  MockPublicEventBloc() {
    _i1.throwOnMissingStub(this);
  }

  @override
  List<_i8.EventEntity> get allEvents => (super.noSuchMethod(
        Invocation.getter(#allEvents),
        returnValue: <_i8.EventEntity>[],
      ) as List<_i8.EventEntity>);

  @override
  set allEvents(List<_i8.EventEntity>? _allEvents) => super.noSuchMethod(
        Invocation.setter(
          #allEvents,
          _allEvents,
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i5.PublicEventsState get state => (super.noSuchMethod(
        Invocation.getter(#state),
        returnValue: _FakePublicEventsState_3(
          this,
          Invocation.getter(#state),
        ),
      ) as _i5.PublicEventsState);

  @override
  _i6.Stream<_i5.PublicEventsState> get stream => (super.noSuchMethod(
        Invocation.getter(#stream),
        returnValue: _i6.Stream<_i5.PublicEventsState>.empty(),
      ) as _i6.Stream<_i5.PublicEventsState>);

  @override
  bool get isClosed => (super.noSuchMethod(
        Invocation.getter(#isClosed),
        returnValue: false,
      ) as bool);

  @override
  dynamic loadEvents(
    _i15.PublicEventsEvent? event,
    _i16.Emitter<_i5.PublicEventsState>? emit,
  ) =>
      super.noSuchMethod(Invocation.method(
        #loadEvents,
        [
          event,
          emit,
        ],
      ));

  @override
  void add(_i15.PublicEventsEvent? event) => super.noSuchMethod(
        Invocation.method(
          #add,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onEvent(_i15.PublicEventsEvent? event) => super.noSuchMethod(
        Invocation.method(
          #onEvent,
          [event],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void emit(_i5.PublicEventsState? state) => super.noSuchMethod(
        Invocation.method(
          #emit,
          [state],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void on<E extends _i15.PublicEventsEvent>(
    _i16.EventHandler<E, _i5.PublicEventsState>? handler, {
    _i16.EventTransformer<E>? transformer,
  }) =>
      super.noSuchMethod(
        Invocation.method(
          #on,
          [handler],
          {#transformer: transformer},
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onTransition(
          _i16.Transition<_i15.PublicEventsEvent, _i5.PublicEventsState>?
              transition) =>
      super.noSuchMethod(
        Invocation.method(
          #onTransition,
          [transition],
        ),
        returnValueForMissingStub: null,
      );

  @override
  _i6.Future<void> close() => (super.noSuchMethod(
        Invocation.method(
          #close,
          [],
        ),
        returnValue: _i6.Future<void>.value(),
        returnValueForMissingStub: _i6.Future<void>.value(),
      ) as _i6.Future<void>);

  @override
  void onChange(_i16.Change<_i5.PublicEventsState>? change) =>
      super.noSuchMethod(
        Invocation.method(
          #onChange,
          [change],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void addError(
    Object? error, [
    StackTrace? stackTrace,
  ]) =>
      super.noSuchMethod(
        Invocation.method(
          #addError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );

  @override
  void onError(
    Object? error,
    StackTrace? stackTrace,
  ) =>
      super.noSuchMethod(
        Invocation.method(
          #onError,
          [
            error,
            stackTrace,
          ],
        ),
        returnValueForMissingStub: null,
      );
}
