import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:gowagr_assessment/features/theme/domain/repositories/theme_repository.dart';

@LazySingleton()
class ToggleThemeMode {
  final ThemeRepository repository;

  ToggleThemeMode(this.repository);

  Future<ThemeMode> call(ThemeMode currentMode) async {
    final newMode =
        currentMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    await repository.saveThemeMode(newMode);
    return newMode;
  }
}
