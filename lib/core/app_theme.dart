import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gowagr_assessment/core/constants/app_colors.dart';

class AppTheme {
  static final ValueNotifier<ThemeMode> themeModeNotifier =
      ValueNotifier(ThemeMode.light);

  static void toggleTheme() {
    themeModeNotifier.value = themeModeNotifier.value == ThemeMode.light
        ? ThemeMode.dark
        : ThemeMode.light;
  }

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primary,
      secondary: AppColors.accent,
      surface: AppColors.white,
      onPrimary: AppColors.white,
      onSecondary: AppColors.darkGrey,
      onSurface: AppColors.darkGrey,
      error: AppColors.errorRed,
    ),
    scaffoldBackgroundColor: AppColors.backgroundColorLight,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColorLight,
      foregroundColor: AppColors.darkGrey,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.darkGrey),
      toolbarTextStyle: TextStyle(color: AppColors.darkGrey),
      titleTextStyle: TextStyle(color: AppColors.darkGrey),
    ),
    cardColor: AppColors.white,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.archivo(
          fontSize: 96, fontWeight: FontWeight.w300, color: AppColors.darkGrey),
      displayMedium: GoogleFonts.archivo(
          fontSize: 60, fontWeight: FontWeight.w300, color: AppColors.darkGrey),
      displaySmall: GoogleFonts.archivo(
          fontSize: 48, fontWeight: FontWeight.w400, color: AppColors.darkGrey),
      headlineMedium: GoogleFonts.archivo(
          fontSize: 34, fontWeight: FontWeight.w400, color: AppColors.darkGrey),
      headlineSmall: GoogleFonts.archivo(
          fontSize: 24, fontWeight: FontWeight.w400, color: AppColors.darkGrey),
      titleLarge: GoogleFonts.archivo(
          fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.darkGrey),
      bodyLarge: GoogleFonts.archivo(
          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.darkGrey),
      bodyMedium: GoogleFonts.archivo(
          fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.darkGrey),
      labelLarge: GoogleFonts.archivo(
          fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.white),
      labelSmall: GoogleFonts.archivo(
          fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.darkGrey),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primary,
      textTheme: ButtonTextTheme.primary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightGrey,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: AppColors.primary, width: 2.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      hintStyle: GoogleFonts.archivo(color: AppColors.grey),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryDark,
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryDark,
      secondary: AppColors.accentDark,
      surface: AppColors.cardColorDark,
      onPrimary: AppColors.white,
      onSecondary: AppColors.white,
      onSurface: AppColors.white,
      error: AppColors.errorRed,
    ),
    scaffoldBackgroundColor: AppColors.backgroundColorDark,
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundColorDark,
      foregroundColor: AppColors.white,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.white),
      toolbarTextStyle: TextStyle(color: AppColors.white),
      titleTextStyle: TextStyle(color: AppColors.white),
    ),
    cardColor: AppColors.cardColorDark,
    textTheme: TextTheme(
      displayLarge: GoogleFonts.archivo(
          fontSize: 96, fontWeight: FontWeight.w300, color: AppColors.white),
      displayMedium: GoogleFonts.archivo(
          fontSize: 60, fontWeight: FontWeight.w300, color: AppColors.white),
      displaySmall: GoogleFonts.archivo(
          fontSize: 48, fontWeight: FontWeight.w400, color: AppColors.white),
      headlineMedium: GoogleFonts.archivo(
          fontSize: 34, fontWeight: FontWeight.w400, color: AppColors.white),
      headlineSmall: GoogleFonts.archivo(
          fontSize: 24, fontWeight: FontWeight.w400, color: AppColors.white),
      titleLarge: GoogleFonts.archivo(
          fontSize: 20, fontWeight: FontWeight.w500, color: AppColors.white),
      bodyLarge: GoogleFonts.archivo(
          fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.white),
      bodyMedium: GoogleFonts.archivo(
          fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.white),
      labelLarge: GoogleFonts.archivo(
          fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.white),
      labelSmall: GoogleFonts.archivo(
          fontSize: 10, fontWeight: FontWeight.w400, color: AppColors.white),
    ),
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryDark,
      textTheme: ButtonTextTheme.primary,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkGrey.withOpacity(0.3),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: const BorderSide(color: AppColors.primaryDark, width: 2.0),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      hintStyle: GoogleFonts.archivo(color: AppColors.lightGrey),
    ),
  );
}
