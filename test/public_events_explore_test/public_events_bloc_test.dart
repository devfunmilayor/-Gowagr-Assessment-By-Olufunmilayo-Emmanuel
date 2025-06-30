import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:gowagr_assessment/core/error/app_error.dart';
import 'package:gowagr_assessment/features/events/domain/usecases/gowagr_events_usecases.dart';
import 'package:mockito/mockito.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/market_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_bloc.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_event.dart';
import 'package:gowagr_assessment/features/events/presentation/bloc/public_events_state.dart';

import 'mocks.mocks.dart';

void main() {
  late PublicEventBloc bloc;
  late MockGetPublicEventsUsecase mockGetPublicEventsUsecase;

  setUp(() {
    mockGetPublicEventsUsecase = MockGetPublicEventsUsecase();
    bloc = PublicEventBloc(mockGetPublicEventsUsecase);
  });

  final tMarket = MarketEntity(
    id: 'm1',
    title: 'Market 1',
    rules: 'Rules for Market 1',
    yesBuyPrice: 100.0,
    noBuyPrice: 50.0,
    yesPriceForEstimate: 70,
    noPriceForEstimate: 30,
    status: 'Live',
    yesProfitForEstimate: 5,
    noProfitForEstimate: 2,
    volumeValueYes: 1000.0,
    volumeValueNo: 500.0,
  );

  final tEvent = EventEntity(
    id: '1',
    title: 'Test Event',
    imageUrl: 'http://example.com/image.jpg',
    resolutionDate: DateTime.now().add(const Duration(days: 7)),
    markets: [tMarket],
    type: 'Prediction',
    category: 'Sports',
    hashtags: ['#football', '#test'],
    countryCodes: ['US', 'NG'],
    regions: ['Africa', 'America'],
    status: 'Live',
    totalVolume: 1500.0,
  );

  final tEventsList = [tEvent];
  final tPagination =
      PaginationEntity(page: 1, size: 10, totalCount: 1, lastPage: 1);
  final tEventsAndPagination = (tEventsList, tPagination);

  final tNextPageEvent = tEvent.copyWith(id: '2', title: 'Next Page Event');
  final tNextPageEventsList = [tNextPageEvent];
  final tNextPagination =
      PaginationEntity(page: 2, size: 10, totalCount: 2, lastPage: 2);
  final tNextEventsAndPagination = (tNextPageEventsList, tNextPagination);

  final tInitialPaginationForLoadMore =
      PaginationEntity(page: 1, size: 10, totalCount: 20, lastPage: 2);

  tearDown(() {
    bloc.close();
  });

  test(
    'initial state should be PublicEventsStateInitial',
    () {
      expect(bloc.state, PublicEventsState.initial());
    },
  );

  group('LoadEvents', () {
    blocTest<PublicEventBloc, PublicEventsState>(
      'should emit [loading, loaded] when data is fetched successfully for initial load',
      build: () {
        when(mockGetPublicEventsUsecase(any))
            .thenAnswer((_) async => Right(tEventsAndPagination));
        return bloc;
      },
      act: (bloc) => bloc.add(PublicEventsEvent.loadEvents(
        initialLoad: true,
        category: 'Trending',
      )),
      expect: () => [
        PublicEventsState.loading(),
        PublicEventsState.loaded(
          events: tEventsList,
          pagination: tPagination,
          currentKeyword: null,
          currentCategory: 'Trending',
        ),
      ],
      verify: (_) {
        verify(mockGetPublicEventsUsecase(GetEventsParams(
          category: 'Trending',
          keyword: null,
          page: 1,
          size: 10,
          trending: true,
        ))).called(1);
      },
    );

    blocTest<PublicEventBloc, PublicEventsState>(
      'should emit [loading, error] when initial data fetch fails',
      build: () {
        when(mockGetPublicEventsUsecase(any))
            .thenAnswer((_) async => Left(ServerFailure(message: 'Failed')));
        return bloc;
      },
      act: (bloc) => bloc.add(PublicEventsEvent.loadEvents(
        initialLoad: true,
        category: 'Trending',
      )),
      expect: () => [
        PublicEventsState.loading(),
        PublicEventsState.error('Failed'),
      ],
    );

    blocTest<PublicEventBloc, PublicEventsState>(
      'should emit [loading, empty] when initial data fetch returns empty list',
      build: () {
        when(mockGetPublicEventsUsecase(any)).thenAnswer((_) async => Right((
              [],
              PaginationEntity(page: 1, size: 10, totalCount: 0, lastPage: 0)
            )));
        return bloc;
      },
      act: (bloc) => bloc.add(PublicEventsEvent.loadEvents(
        initialLoad: true,
        category: 'Trending',
      )),
      expect: () => [
        PublicEventsState.loading(),
        PublicEventsState.empty('No events found.'),
      ],
    );
  });

  group('LoadMoreEvents', () {
    blocTest<PublicEventBloc, PublicEventsState>(
      'should emit [loadingMore, loaded] when more data is fetched successfully',
      build: () {
        when(mockGetPublicEventsUsecase(GetEventsParams(
          category: 'Trending',
          keyword: null,
          page: 1,
          size: 10,
          trending: true,
        ))).thenAnswer(
            (_) async => Right((tEventsList, tInitialPaginationForLoadMore)));
        when(mockGetPublicEventsUsecase(GetEventsParams(
          category: 'Trending',
          keyword: null,
          page: 2,
          size: 10,
          trending: true,
        ))).thenAnswer((_) async => Right(tNextEventsAndPagination));
        return bloc;
      },
      seed: () => PublicEventsState.loaded(
        events: tEventsList,
        pagination: tInitialPaginationForLoadMore,
        currentKeyword: null,
        currentCategory: 'Trending',
      ),
      act: (bloc) => bloc.add(PublicEventsEvent.loadMoreEvents()),
      expect: () => [
        PublicEventsState.loadingMore(
          events: tEventsList,
          pagination: tInitialPaginationForLoadMore,
          currentKeyword: null,
          currentCategory: 'Trending',
        ),
        PublicEventsState.loaded(
          events: [...tEventsList, ...tNextPageEventsList],
          pagination: tNextPagination,
          currentKeyword: null,
          currentCategory: 'Trending',
        ),
      ],
      verify: (_) {
        verify(mockGetPublicEventsUsecase(GetEventsParams(
          category: 'Trending',
          keyword: null,
          page: 2,
          size: 10,
          trending: true,
        ))).called(1);
      },
    );

    blocTest<PublicEventBloc, PublicEventsState>(
      'should emit [error, loaded] when loading more data fails',
      build: () {
        when(mockGetPublicEventsUsecase(GetEventsParams(
          category: 'Trending',
          keyword: null,
          page: 1,
          size: 10,
          trending: true,
        ))).thenAnswer((_) async => Right((
              tEventsList,
              tInitialPaginationForLoadMore
            ))); // Mock initial data for seed
        when(mockGetPublicEventsUsecase(GetEventsParams(
          category: 'Trending',
          keyword: null,
          page: 2,
          size: 10,
          trending: true,
        ))).thenAnswer(
            (_) async => Left(NetworkFailure(message: 'Network Error')));
        return bloc;
      },
      seed: () => PublicEventsState.loaded(
        events: tEventsList,
        pagination: tInitialPaginationForLoadMore,
        currentKeyword: null,
        currentCategory: 'Trending',
      ),
      act: (bloc) => bloc.add(PublicEventsEvent.loadMoreEvents()),
      expect: () => [
        PublicEventsState.loadingMore(
          events: tEventsList,
          pagination: tInitialPaginationForLoadMore,
          currentKeyword: null,
          currentCategory: 'Trending',
        ),
        PublicEventsState.error('Network Error'),
        PublicEventsState.loaded(
          events: tEventsList,
          pagination: tInitialPaginationForLoadMore,
          currentKeyword: null,
          currentCategory: 'Trending',
        ),
      ],
    );

    blocTest<PublicEventBloc, PublicEventsState>(
      'should not load more if already on the last page',
      build: () => bloc,
      seed: () => PublicEventsState.loaded(
        events: tEventsList,
        pagination:
            PaginationEntity(page: 1, size: 10, totalCount: 1, lastPage: 1),
        currentKeyword: null,
        currentCategory: 'Trending',
      ),
      act: (bloc) => bloc.add(PublicEventsEvent.loadMoreEvents()),
      expect: () => [],
      verify: (_) {
        verifyZeroInteractions(mockGetPublicEventsUsecase);
      },
    );
  });
}
