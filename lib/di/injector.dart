import 'package:get_it/get_it.dart';
import 'package:gowagr_assessment/core/constants/app_constant.dart';
import 'package:gowagr_assessment/di/injector.config.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

final sl = GetIt.instance;

@InjectableInit(
    initializerName: 'init', preferRelativeImports: true, asExtension: true)
Future<void> configureDependencies() async => sl.init();

@module
abstract class RegisterModule {
  @lazySingleton
  http.Client get httpClient => http.Client();

  @preResolve
  @Named(AppConstants.EVENT_CACHE_BOX)
  Future<Box<String>> eventsBox() async {
    if (!Hive.isBoxOpen(AppConstants.EVENT_CACHE_BOX)) {
      await Hive.initFlutter();
      return await Hive.openBox<String>(AppConstants.EVENT_CACHE_BOX);
    }
    return Hive.box<String>(AppConstants.EVENT_CACHE_BOX);
  }

  @preResolve
  @Named(AppConstants.SETTINGS_CACHE_BOX)
  Future<Box<String>> settingBox() async {
    if (!Hive.isBoxOpen(AppConstants.SETTINGS_CACHE_BOX)) {
      await Hive.initFlutter();
      return await Hive.openBox<String>(AppConstants.SETTINGS_CACHE_BOX);
    }
    return Hive.box<String>(AppConstants.EVENT_CACHE_BOX);
  }
}
