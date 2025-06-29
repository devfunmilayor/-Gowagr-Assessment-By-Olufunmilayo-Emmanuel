import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String message;
  final List properties;

  const Failure({required this.message, this.properties = const <dynamic>[]});

  @override
  List<Object> get props => [message, properties];
}

class ServerFailure extends Failure {
  final int? statusCode;
  const ServerFailure({required super.message, this.statusCode});
}

class CacheFailure extends Failure {
  const CacheFailure({required super.message});
}

class NetworkFailure extends Failure {
  const NetworkFailure({required super.message});
}
