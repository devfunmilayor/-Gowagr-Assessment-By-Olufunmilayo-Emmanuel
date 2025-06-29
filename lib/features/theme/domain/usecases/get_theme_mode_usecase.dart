import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:gowagr_assessment/features/theme/domain/repositories/theme_repository.dart';

@LazySingleton()
class GetThemeMode {
  final ThemeRepository repository;

  GetThemeMode(this.repository);
  Future<ThemeMode> call() => repository.getThemeMode();
}
