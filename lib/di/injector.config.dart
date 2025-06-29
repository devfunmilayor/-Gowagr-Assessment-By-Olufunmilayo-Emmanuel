// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:hive_flutter/hive_flutter.dart' as _i986;
import 'package:http/http.dart' as _i519;
import 'package:injectable/injectable.dart' as _i526;

import '../core/network/gowagr_http_client.dart' as _i804;
import '../core/network/gowagr_http_client_impl.dart' as _i1068;
import '../core/network/network_check.dart' as _i665;
import '../features/events/data/datasources/event_local_data_source.dart'
    as _i820;
import '../features/events/data/datasources/event_remote_data_source.dart'
    as _i744;
import '../features/events/data/repositories/event_repository_impl.dart'
    as _i593;
import '../features/events/domain/repositories/event_repository.dart' as _i563;
import '../features/events/domain/usecases/gowagr_events_usecases.dart'
    as _i249;
import '../features/events/presentation/bloc/public_events_bloc.dart' as _i521;
import '../features/theme/data/data_source/theme_local_data_source_impl.dart'
    as _i83;
import '../features/theme/data/source/theme_local_data_source.dart' as _i334;
import '../features/theme/domain/repositories/theme_repository.dart' as _i930;
import '../features/theme/domain/repositories/theme_repository_impl.dart'
    as _i1055;
import '../features/theme/domain/usecases/get_theme_mode_usecase.dart' as _i697;
import '../features/theme/domain/usecases/toggle_theme_mode_usecase.dart'
    as _i152;
import '../features/theme/presentation/bloc/theme_bloc.dart' as _i606;
import 'injector.dart' as _i811;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.lazySingleton<_i519.Client>(() => registerModule.httpClient);
    await gh.factoryAsync<_i986.Box<String>>(
      () => registerModule.settingBox(),
      instanceName: 'settingsBox',
      preResolve: true,
    );
    await gh.factoryAsync<_i986.Box<String>>(
      () => registerModule.eventsBox(),
      instanceName: 'eventsBox',
      preResolve: true,
    );
    gh.lazySingleton<_i334.ThemeLocalDataSource>(() =>
        _i83.ThemeLocalDataSourceImpl(
            gh<_i986.Box<String>>(instanceName: 'settingsBox')));
    gh.factory<_i665.NetworkInfo>(() => _i665.NetworkInfoImpl());
    gh.lazySingleton<_i804.IHttpClient>(
        () => _i1068.HttpClientImpl(gh<_i519.Client>()));
    gh.lazySingleton<_i820.EventLocalDataSource>(() =>
        _i820.EventLocalDataSourceImpl(
            gh<_i986.Box<String>>(instanceName: 'eventsBox')));
    gh.lazySingleton<_i744.EventRemoteDataSource>(
        () => _i744.EventRemoteDataSourceImpl(gh<_i804.IHttpClient>()));
    gh.lazySingleton<_i563.EventRepository>(() => _i593.EventRepositoryImpl(
          remoteDataSource: gh<_i744.EventRemoteDataSource>(),
          localDataSource: gh<_i820.EventLocalDataSource>(),
          networkInfo: gh<_i665.NetworkInfo>(),
        ));
    gh.lazySingleton<_i930.ThemeRepository>(
        () => _i1055.ThemeRepositoryImpl(gh<_i334.ThemeLocalDataSource>()));
    gh.factory<_i249.GetPublicEventsUsecase>(
        () => _i249.GetPublicEventsUsecase(gh<_i563.EventRepository>()));
    gh.factory<_i521.PublicEventBloc>(
        () => _i521.PublicEventBloc(gh<_i249.GetPublicEventsUsecase>()));
    gh.lazySingleton<_i697.GetThemeMode>(
        () => _i697.GetThemeMode(gh<_i930.ThemeRepository>()));
    gh.lazySingleton<_i152.ToggleThemeMode>(
        () => _i152.ToggleThemeMode(gh<_i930.ThemeRepository>()));
    gh.factory<_i606.ThemeBloc>(() => _i606.ThemeBloc(
          getThemeMode: gh<_i697.GetThemeMode>(),
          toggleThemeMode: gh<_i152.ToggleThemeMode>(),
        ));
    return this;
  }
}

class _$RegisterModule extends _i811.RegisterModule {}
