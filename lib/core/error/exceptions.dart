class ServerException implements Exception {
  final String message;
  final int? statusCode;

  ServerException({this.message = 'Server Error', this.statusCode});

  @override
  String toString() {
    return 'ServerException: $message (Status: $statusCode)';
  }
}

class CacheException implements Exception {
  final String message;

  CacheException({this.message = 'Cache Error'});

  @override
  String toString() {
    return 'CacheException: $message';
  }
}

class NetworkException implements Exception {
  final String message;

  NetworkException({this.message = 'Network Error'});

  @override
  String toString() {
    return 'NetworkException: $message';
  }
}
