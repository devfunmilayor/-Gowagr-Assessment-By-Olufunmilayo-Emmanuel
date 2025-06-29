import 'dart:developer';

import 'package:gowagr_assessment/core/constants/app_constant.dart';
import 'package:gowagr_assessment/core/network/gowagr_http_client.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

@LazySingleton(as: IHttpClient)
class HttpClientImpl implements IHttpClient {
  final http.Client _client;

  HttpClientImpl(this._client);
  @override
  Future<http.Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    log('data-path: $path');

    final uri = Uri.parse('${AppConstants.BASE_URL}$path').replace(
      queryParameters:
          queryParameters?.map((key, value) => MapEntry(key, value.toString())),
    );

    log('uri: $uri');

    final Map<String, String> finalHeaders = {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      ...(headers ?? {}),
    };

    try {
      final response = await _client.get(uri, headers: finalHeaders);
      log('data-response: $response');
      return response;
    } on http.ClientException catch (e) {
      throw Exception('HTTP Client Error: ${e.message}');
    } catch (e) {
      throw Exception('Failed to perform GET request: $e');
    }
  }
}
