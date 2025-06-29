import 'package:flutter/material.dart';
import 'package:gowagr_assessment/core/constants/app_constant.dart';
import 'package:gowagr_assessment/features/theme/data/source/theme_local_data_source.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ThemeLocalDataSource)
class ThemeLocalDataSourceImpl implements ThemeLocalDataSource {
  final Box<String> _settingsBox;
  ThemeLocalDataSourceImpl(
      @Named(AppConstants.SETTINGS_CACHE_BOX) this._settingsBox);

  @override
  Future<ThemeMode> getThemeMode() async {
    final savedThemeString = _settingsBox.get(AppConstants.THEME_SETTINGS_CACHE,
        defaultValue: 'light');
    return savedThemeString == 'dark' ? ThemeMode.dark : ThemeMode.light;
  }

  @override
  Future<void> saveThemeMode(ThemeMode themeMode) async {
    await _settingsBox.put(AppConstants.THEME_SETTINGS_CACHE,
        themeMode == ThemeMode.dark ? 'dark' : 'light');
  }
}
