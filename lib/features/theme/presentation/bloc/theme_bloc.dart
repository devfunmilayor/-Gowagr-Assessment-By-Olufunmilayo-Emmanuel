// lib/features/theme/presentation/bloc/theme_bloc.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gowagr_assessment/features/theme/domain/usecases/get_theme_mode_usecase.dart';
import 'package:gowagr_assessment/features/theme/domain/usecases/toggle_theme_mode_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:gowagr_assessment/features/theme/presentation/bloc/theme_event.dart';
import 'package:gowagr_assessment/features/theme/presentation/bloc/theme_state.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final GetThemeMode _getThemeMode;
  final ToggleThemeMode _toggleThemeMode;

  ThemeBloc({
    required GetThemeMode getThemeMode,
    required ToggleThemeMode toggleThemeMode,
  })  : _getThemeMode = getThemeMode,
        _toggleThemeMode = toggleThemeMode,
        super(ThemeState.initial()) {
    on<LoadInitialThemeEvent>(_onLoadInitialTheme);
    on<ToggleThemeEvent>(_onToggleTheme);

    add(const ThemeEvent.loadInitialTheme());
  }

  void _onLoadInitialTheme(
      LoadInitialThemeEvent event, Emitter<ThemeState> emit) async {
    try {
      final initialMode = await _getThemeMode();
      emit(state.copyWith(themeMode: initialMode));
    } catch (e) {
      print('Error loading theme: $e');
      emit(state.copyWith(themeMode: ThemeMode.light));
    }
  }

  void _onToggleTheme(
    ToggleThemeEvent event,
    Emitter<ThemeState> emit,
  ) async {
    try {
      final newMode = await _toggleThemeMode(state.themeMode);
      emit(state.copyWith(themeMode: newMode));
    } catch (e) {
      print('Error toggling theme: $e');
    }
  }
}
