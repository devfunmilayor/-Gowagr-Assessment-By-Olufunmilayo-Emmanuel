import 'dart:convert';
import 'package:gowagr_assessment/core/constants/app_constant.dart';
import 'package:gowagr_assessment/core/network/gowagr_http_client.dart';
import 'package:gowagr_assessment/features/events/data/model/event_model.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';
import 'package:gowagr_assessment/core/error/exceptions.dart';

abstract class EventRemoteDataSource {
  Future<EventsApiResponse> getPublicEvents(
      {String? keyword,
      bool? trending,
      int? size,
      int? page,
      String? category});
}

@LazySingleton(as: EventRemoteDataSource)
class EventRemoteDataSourceImpl implements EventRemoteDataSource {
  final IHttpClient httpClient;

  EventRemoteDataSourceImpl(this.httpClient);

  @override
  Future<EventsApiResponse> getPublicEvents(
      {String? keyword,
      bool? trending,
      int? size,
      int? page,
      String? category}) async {
    try {
      final queryParameters = {
        'keyword': keyword,
        'trending': trending,
        'size': size,
        'page': page,
        'category': category
      };

      final Map<String, dynamic> filteredParams = queryParameters.entries
          .where((e) => e.value != null)
          .map((e) => MapEntry(e.key, e.value))
          .toMap();

      final response = await httpClient.get(AppConstants.PUBLIC_EVENTS_ENDPOINT,
          queryParameters: filteredParams);
      if (response.statusCode == 200) {
        return EventsApiResponse.fromJson(json.decode(response.body));
      } else {
        String errorMessage = 'Unknown server error';
        try {
          final errorData = json.decode(response.body);
          if (errorData is Map && errorData.containsKey('message')) {
            errorMessage = errorData['message'];
          }
        } catch (_) {
          errorMessage =
              response.body.isNotEmpty ? response.body : 'Unknown server error';
        }

        throw ServerException(
          message: errorMessage,
          statusCode: response.statusCode,
        );
      }
    } on http.ClientException catch (e) {
      throw NetworkException(message: 'Network connection error: ${e.message}');
    } catch (e) {
      if (e is ServerException || e is NetworkException) {
        rethrow;
      }
      throw ServerException(message: e.toString());
    }
  }
}

extension MapFromEntries<K, V> on Iterable<MapEntry<K, V>> {
  Map<K, V> toMap() {
    return Map.fromEntries(this);
  }
}
