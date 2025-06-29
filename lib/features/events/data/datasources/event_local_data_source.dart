import 'dart:convert';

import 'package:gowagr_assessment/core/constants/app_constant.dart';
import 'package:gowagr_assessment/features/events/data/model/event_model.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:gowagr_assessment/core/error/exceptions.dart';

abstract class EventLocalDataSource {
  Future<void> cacheEvents(EventsApiResponse events);
  Future<EventsApiResponse> getCachedEvents();
  Future<bool> isCacheValid();
}

@LazySingleton(as: EventLocalDataSource)
class EventLocalDataSourceImpl implements EventLocalDataSource {
  final Box<String> _eventsBox;

  EventLocalDataSourceImpl(
      @Named(AppConstants.EVENT_CACHE_BOX) this._eventsBox);

  @override
  Future<void> cacheEvents(EventsApiResponse events) async {
    final cacheData = {
      'timestamp': DateTime.now().toIso8601String(),
      'data': events.toJson()
    };
    await _eventsBox.put(
        AppConstants.PUBLIC_EVENTS_CACHE, jsonEncode(cacheData));
  }

  @override
  Future<EventsApiResponse> getCachedEvents() async {
    final cachedString = _eventsBox.get(AppConstants.PUBLIC_EVENTS_CACHE);
    if (cachedString != null) {
      final Map<String, dynamic> cacheData = jsonDecode(cachedString);
      return EventsApiResponse.fromJson(cacheData['data']);
    } else {
      throw CacheException(message: 'No events found in cache');
    }
  }

  @override
  Future<bool> isCacheValid() async {
    final cachedString = _eventsBox.get(AppConstants.PUBLIC_EVENTS_CACHE);
    if (cachedString != null) {
      final Map<String, dynamic> cacheData = jsonDecode(cachedString);
      final DateTime timestamp = DateTime.parse(cacheData['timestamp']);
      return DateTime.now().difference(timestamp) < const Duration(minutes: 10);
    }
    return false;
  }
}
