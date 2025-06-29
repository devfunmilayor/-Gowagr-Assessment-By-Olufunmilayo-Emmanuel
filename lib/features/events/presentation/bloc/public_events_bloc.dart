import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gowagr_assessment/core/app_theme.dart';
import 'package:gowagr_assessment/core/error/app_error.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';
import 'package:gowagr_assessment/features/events/domain/usecases/gowagr_events_usecases.dart';
import 'package:injectable/injectable.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';

import 'public_events_event.dart';
import 'public_events_state.dart';

@injectable
class PublicEventBloc extends Bloc<PublicEventsEvent, PublicEventsState> {
  final GetPublicEventsUsecase getPublicEventUsecase;

  List<EventEntity> allEvents = [];
  PaginationEntity? _currentPagination;
  String? _currentKeyword;
  String? _currentCategory;
  bool _isLoadingMore = false;
  PublicEventBloc(this.getPublicEventUsecase)
      : super(const PublicEventsState.initial()) {
    on<PublicEventsEvent>((event, emit) async {
      event.map(
        toggleTheme: (e) => AppTheme.toggleTheme(),
        loadEvents: (e) async {
          if (e.initialLoad == true) {
            emit(const PublicEventsState.loading());
            allEvents = [];
            _currentPagination = null;
          } else {
            state.maybeMap(
              loaded: (loadedState) {
                if (!_isLoadingMore) {
                  emit(loadedState.copyWith(
                    currentKeyword: e.keyword ?? loadedState.currentKeyword,
                    currentCategory: e.category ?? loadedState.currentCategory,
                  ));
                }
              },
              orElse: () {
                emit(const PublicEventsState.loading());
              },
            );
          }

          _currentKeyword = e.keyword;
          _currentCategory = e.category;

          await _fetchAndEmitEvents(emit, page: 1, isInitialFetch: true);
        },
        loadMoreEvents: (_) async {
          if (_isLoadingMore ||
              _currentPagination == null ||
              _currentPagination!.page >= _currentPagination!.lastPage) {
            return;
          }
          _isLoadingMore = true;
          emit(PublicEventsState.loadingMore(
            events: allEvents,
            pagination: _currentPagination!,
            currentKeyword: _currentKeyword,
            currentCategory: _currentCategory,
          ));

          await _fetchAndEmitEvents(emit,
              page: _currentPagination!.page + 1, isInitialFetch: false);
          _isLoadingMore = false;
        },
        filterByCategory: (e) async {
          emit(const PublicEventsState.loading());
          _currentCategory = e.category;
          _currentKeyword = null;
          allEvents = [];
          _currentPagination = null;
          await _fetchAndEmitEvents(emit, page: 1, isInitialFetch: true);
        },
        searchEvents: (e) async {
          emit(const PublicEventsState.loading());
          _currentKeyword = e.keyword;
          _currentCategory = null;
          allEvents = [];
          _currentPagination = null;
          await _fetchAndEmitEvents(emit, page: 1, isInitialFetch: true);
        },
      );
    });
  }

  Future<void> _fetchAndEmitEvents(Emitter<PublicEventsState> emit,
      {required int page, required bool isInitialFetch}) async {
    final result = await getPublicEventUsecase(GetEventsParams(
        keyword: _currentKeyword,
        trending: _currentCategory == 'Trending' ? true : null,
        size: 10,
        page: page,
        category: _currentCategory == 'Trending' ? null : _currentCategory));

    result.fold(
      (failure) {
        if (failure is CacheFailure && allEvents.isNotEmpty) {
          state.maybeMap(
            loaded: (loadedState) {
              emit(loadedState.copyWith());
            },
            orElse: () {
              emit(PublicEventsState.error(_mapFailureToMessage(failure)));
            },
          );
        } else if (isInitialFetch) {
          emit(PublicEventsState.error(_mapFailureToMessage(failure)));
        } else {
          state.maybeMap(
            loaded: (loadedState) {
              emit(loadedState.copyWith());
            },
            loadingMore: (_) {
              if (allEvents.isNotEmpty) {
                emit(PublicEventsState.loaded(
                    events: allEvents,
                    pagination: _currentPagination!,
                    currentKeyword: _currentKeyword,
                    currentCategory: _currentCategory));
              } else {
                emit(PublicEventsState.error(_mapFailureToMessage(failure)));
              }
            },
            orElse: () {
              emit(PublicEventsState.error(_mapFailureToMessage(failure)));
            },
          );
        }
      },
      (eventsWithPagination) {
        final newEvents = eventsWithPagination.$1;
        _currentPagination = eventsWithPagination.$2;

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
            pagination: _currentPagination!,
            currentKeyword: _currentKeyword,
            currentCategory: _currentCategory,
          ));
        }
      },
    );
  }

  String _mapFailureToMessage(Failure failure) {
    switch (failure.runtimeType) {
      case const (ServerFailure):
        return failure.message == "No internet connection or timeout"
            ? "No internet connection"
            : "Server Error: ${failure.message}";
      case const (CacheFailure):
        return 'Cache Error: ${failure.message}';
      case const (NetworkFailure):
        return 'Network Error: ${failure.message}';
      default:
        return 'Unexpected Error';
    }
  }
}
