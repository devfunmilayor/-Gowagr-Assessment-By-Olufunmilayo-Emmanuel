import 'package:flutter/material.dart';

abstract class ThemeLocalDataSource {
  Future<ThemeMode> getThemeMode();
  Future<void> saveThemeMode(ThemeMode themeMode);
}
