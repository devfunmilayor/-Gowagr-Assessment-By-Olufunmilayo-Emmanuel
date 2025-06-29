// lib/features/theme/data/repositories/theme_repository_impl.dart
import 'package:flutter/material.dart';
import 'package:gowagr_assessment/features/theme/data/source/theme_local_data_source.dart';
import 'package:injectable/injectable.dart'; // Import injectable
import 'package:gowagr_assessment/features/theme/domain/repositories/theme_repository.dart';

@LazySingleton(as: ThemeRepository)
class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeLocalDataSource localDataSource;

  ThemeRepositoryImpl(this.localDataSource);

  @override
  Future<ThemeMode> getThemeMode() {
    return localDataSource.getThemeMode();
  }

  @override
  Future<void> saveThemeMode(ThemeMode themeMode) {
    return localDataSource.saveThemeMode(themeMode);
  }
}
