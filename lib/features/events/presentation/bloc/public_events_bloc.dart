import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gowagr_assessment/features/theme/presentation/app_theme.dart';
import 'package:gowagr_assessment/core/error/app_error.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';
import 'package:gowagr_assessment/features/events/domain/usecases/gowagr_events_usecases.dart';
import 'package:injectable/injectable.dart';

import 'public_events_event.dart';
import 'public_events_state.dart';

@injectable
class PublicEventBloc extends Bloc<PublicEventsEvent, PublicEventsState> {
  final GetPublicEventsUsecase _getPublicEventsUsecase;

  List<EventEntity> allEvents = [];
  PaginationEntity? _pagination;
  String? _keyword;
  String? _category;
  bool _isLoadingMore = false;

  PublicEventBloc(this._getPublicEventsUsecase)
      : super(const PublicEventsState.initial()) {
    on<PublicEventsEvent>(_handleEvent);
  }

  Future<void> _handleEvent(
    PublicEventsEvent event,
    Emitter<PublicEventsState> emit,
  ) async {
    await event.map(
      toggleTheme: (_) async => AppTheme.toggleTheme(),
      loadEvents: (e) async => await loadEvents(e, emit),
      loadMoreEvents: (_) async => await _loadMoreEvents(emit),
      filterByCategory: (e) async =>
          await _applyFilter(category: e.category, emit: emit),
      searchEvents: (e) async =>
          await _applyFilter(keyword: e.keyword, emit: emit),
    );
  }

  loadEvents(PublicEventsEvent event, Emitter<PublicEventsState> emit) async {
    return event.maybeMap(
      loadEvents: (e) async {
        final isInitialLoad = e.initialLoad ?? false;

        if (isInitialLoad) {
          _resetState(e.keyword, e.category);
          if (!emit.isDone) emit(const PublicEventsState.loading());
        } else {
          _keyword = e.keyword;
          _category = e.category;
        }

        await _fetchAndEmit(emit, page: 1, isInitialFetch: true);
      },
      orElse: () async {},
    );
  }

  Future<void> _loadMoreEvents(Emitter<PublicEventsState> emit) async {
    if (_isLoadingMore ||
        _pagination == null ||
        _pagination!.page >= _pagination!.lastPage) {
      return;
    }

    _isLoadingMore = true;

    if (!emit.isDone) {
      emit(PublicEventsState.loadingMore(
        events: allEvents,
        pagination: _pagination!,
        currentKeyword: _keyword,
        currentCategory: _category,
      ));
    }

    await _fetchAndEmit(emit,
        page: _pagination!.page + 1, isInitialFetch: false);
    _isLoadingMore = false;
  }

  Future<void> _applyFilter({
    String? keyword,
    String? category,
    required Emitter<PublicEventsState> emit,
  }) async {
    _resetState(keyword, category);

    if (!emit.isDone) emit(const PublicEventsState.loading());
    await _fetchAndEmit(emit, page: 1, isInitialFetch: true);
  }

  void _resetState(String? keyword, String? category) {
    _keyword = keyword;
    _category = category;
    allEvents = [];
    _pagination = null;
  }

  Future<void> _fetchAndEmit(
    Emitter<PublicEventsState> emit, {
    required int page,
    required bool isInitialFetch,
  }) async {
    final result = await _getPublicEventsUsecase(
      GetEventsParams(
        keyword: _keyword,
        trending: _category == 'Trending' ? true : null,
        category: _category == 'Trending' ? null : _category,
        page: page,
        size: 10,
      ),
    );

    if (emit.isDone) return;

    result.fold(
      (failure) => _handleFailure(failure, emit, isInitialFetch),
      (data) {
        final newEvents = data.$1;
        _pagination = data.$2;

        if (page == 1) {
          allEvents = newEvents;
        } else {
          allEvents.addAll(newEvents);
        }

        if (allEvents.isEmpty) {
          emit(const PublicEventsState.empty('No events found.'));
        } else {
          emit(PublicEventsState.loaded(
            events: allEvents,
            pagination: _pagination!,
            currentKeyword: _keyword,
            currentCategory: _category,
          ));
        }
      },
    );
  }

  void _handleFailure(
    Failure failure,
    Emitter<PublicEventsState> emit,
    bool isInitialFetch,
  ) {
    final message = _mapFailureToMessage(failure);
    if (failure is CacheFailure && allEvents.isNotEmpty) {
      _emitCachedState(emit);
    } else if (isInitialFetch) {
      emit(PublicEventsState.error(message));
    } else {
      _emitFallbackOrError(message, emit);
    }
  }

  void _emitCachedState(Emitter<PublicEventsState> emit) {
    state.maybeMap(
      loaded: (loaded) => emit(loaded.copyWith()),
      orElse: () => emit(
          const PublicEventsState.error("No internet. Showing cached data.")),
    );
  }

  void _emitFallbackOrError(String message, Emitter<PublicEventsState> emit) {
    state.maybeMap(
      loaded: (loaded) => emit(loaded.copyWith()),
      loadingMore: (_) {
        if (allEvents.isNotEmpty) {
          emit(PublicEventsState.loaded(
            events: allEvents,
            pagination: _pagination!,
            currentKeyword: _keyword,
            currentCategory: _category,
          ));
        } else {
          emit(PublicEventsState.error(message));
        }
      },
      orElse: () => emit(PublicEventsState.error(message)),
    );
  }

  String _mapFailureToMessage(Failure failure) {
    return switch (failure) {
      ServerFailure(message: final msg) =>
        msg == 'No internet connection or timeout'
            ? 'No internet connection'
            : msg,
      CacheFailure(message: final msg) => msg,
      NetworkFailure(message: final msg) => msg,
      _ => 'Unexpected error occurred.'
    };
  }
}
