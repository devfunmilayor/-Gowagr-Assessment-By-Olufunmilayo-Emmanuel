import 'package:http/http.dart' as http;

abstract class IHttpClient {
  Future<http.Response> get(String path,
      {Map<String, dynamic>? queryParameters, Map<String, String>? headers});
}
