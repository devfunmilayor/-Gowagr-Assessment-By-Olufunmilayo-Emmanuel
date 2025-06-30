import 'package:flutter_test/flutter_test.dart';
import 'package:gowagr_assessment/features/events/domain/entities/event_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/market_entity.dart';
import 'package:gowagr_assessment/features/events/domain/entities/pagination_entity.dart';

void main() {
  group('EventEntity', () {
    final tMarket = MarketEntity(
      id: 'm1',
      title: 'Test Market',
      rules: 'Some rules here',
      yesBuyPrice: 100.0,
      noBuyPrice: 50.0,
      yesPriceForEstimate: 70,
      noPriceForEstimate: 30,
      status: 'Open',
      yesProfitForEstimate: 5,
      noProfitForEstimate: 2,
      volumeValueYes: 1000.0,
      volumeValueNo: 500.0,
    );

    final tEvent = EventEntity(
      id: '1',
      title: 'Test Event',
      imageUrl: 'http://example.com/image.jpg',
      image128Url: 'http://example.com/image128.jpg',
      resolutionDate: DateTime(2025, 12, 31),
      markets: [tMarket],
      type: 'Prediction',
      category: 'Sports',
      hashtags: ['#football', '#test'],
      countryCodes: ['US', 'NG'],
      regions: ['Africa', 'America'],
      status: 'Live',
      totalVolume: 1500.0,
    );

    test('should be a subclass of Equatable', () {
      expect(tEvent, isA<Object>());
      expect(
          tEvent,
          equals(EventEntity(
            id: '1',
            title: 'Test Event',
            imageUrl: 'http://example.com/image.jpg',
            image128Url: 'http://example.com/image128.jpg',
            resolutionDate: DateTime(2025, 12, 31),
            markets: [tMarket],
            type: 'Prediction',
            category: 'Sports',
            hashtags: ['#football', '#test'],
            countryCodes: ['US', 'NG'],
            regions: ['Africa', 'America'],
            status: 'Live',
            totalVolume: 1500.0,
          )));
      expect(
          tEvent,
          isNot(EventEntity(
            id: '2',
            title: 'Another Event',
            markets: [],
            resolutionDate: null,
            type: 'Prediction',
            category: 'Sports',
            hashtags: [],
            countryCodes: [],
            regions: [],
            status: 'Live',
            totalVolume: 0.0,
          )));
    });

    test('should return correct properties', () {
      expect(tEvent.id, '1');
      expect(tEvent.title, 'Test Event');
      expect(tEvent.imageUrl, 'http://example.com/image.jpg');
      expect(tEvent.image128Url, 'http://example.com/image128.jpg');
      expect(tEvent.resolutionDate, DateTime(2025, 12, 31));
      expect(tEvent.markets, [tMarket]);
      expect(tEvent.type, 'Prediction');
      expect(tEvent.category, 'Sports');
      expect(tEvent.hashtags, ['#football', '#test']);
      expect(tEvent.countryCodes, ['US', 'NG']);
      expect(tEvent.regions, ['Africa', 'America']);
      expect(tEvent.status, 'Live');
      expect(tEvent.totalVolume, 1500.0);
    });

    test('copyWith should return a new instance with updated values', () {
      final updatedEvent = tEvent.copyWith(
          title: 'Updated Title', imageUrl: 'new_url.jpg', status: 'Resolved');
      expect(updatedEvent.title, 'Updated Title');
      expect(updatedEvent.imageUrl, 'new_url.jpg');
      expect(updatedEvent.status, 'Resolved');
      expect(updatedEvent.id, '1');
      expect(updatedEvent, isNot(tEvent));
    });
  });

  group('MarketEntity', () {
    final tMarket = MarketEntity(
      id: 'm1',
      title: 'Market X',
      rules: 'Rules for Market X',
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

    test('should be a subclass of Equatable', () {
      expect(tMarket, isA<Object>());
      expect(
          tMarket,
          equals(MarketEntity(
            id: 'm1',
            title: 'Market X',
            rules: 'Rules for Market X',
            yesBuyPrice: 100.0,
            noBuyPrice: 50.0,
            yesPriceForEstimate: 70,
            noPriceForEstimate: 30,
            status: 'Live',
            yesProfitForEstimate: 5,
            noProfitForEstimate: 2,
            volumeValueYes: 1000.0,
            volumeValueNo: 500.0,
          )));
      expect(
          tMarket,
          isNot(MarketEntity(
            id: 'm2',
            title: 'Market Y',
            rules: 'Different rules',
            yesBuyPrice: 90.0,
            noBuyPrice: 60.0,
            yesPriceForEstimate: 60,
            noPriceForEstimate: 40,
            status: 'Closed',
            yesProfitForEstimate: 10,
            noProfitForEstimate: 5,
            volumeValueYes: 2000.0,
            volumeValueNo: 1000.0,
          )));
    });

    test('should return correct properties', () {
      expect(tMarket.id, 'm1');
      expect(tMarket.title, 'Market X');
      expect(tMarket.rules, 'Rules for Market X');
      expect(tMarket.yesBuyPrice, 100.0);
      expect(tMarket.noBuyPrice, 50.0);
      expect(tMarket.yesPriceForEstimate, 70);
      expect(tMarket.noPriceForEstimate, 30);
      expect(tMarket.status, 'Live');
      expect(tMarket.yesProfitForEstimate, 5);
      expect(tMarket.noProfitForEstimate, 2);
      expect(tMarket.volumeValueYes, 1000.0);
      expect(tMarket.volumeValueNo, 500.0);
    });
  });

  group('PaginationEntity', () {
    const tPagination =
        PaginationEntity(page: 1, size: 10, totalCount: 100, lastPage: 10);

    test('should be a subclass of Equatable', () {
      expect(tPagination, isA<Object>());
      expect(
          tPagination,
          equals(const PaginationEntity(
              page: 1, size: 10, totalCount: 100, lastPage: 10)));
      expect(
          tPagination,
          isNot(const PaginationEntity(
              page: 2, size: 10, totalCount: 100, lastPage: 10)));
    });

    test('should return correct properties', () {
      expect(tPagination.page, 1);
      expect(tPagination.size, 10);
      expect(tPagination.totalCount, 100);
      expect(tPagination.lastPage, 10);
    });
  });
}
