import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:injectable/injectable.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

@Injectable(as: NetworkInfo)
class NetworkInfoImpl implements NetworkInfo {
  final InternetConnectionChecker _internetConnectionChecker =
      InternetConnectionChecker();
  NetworkInfoImpl();
  @override
  Future<bool> get isConnected => _internetConnectionChecker.hasConnection;
}
