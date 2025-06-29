import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gowagr_assessment/core/constants/app_colors.dart';

class AppTheme {
  static final ValueNotifier<ThemeMode> themeMode =
      ValueNotifier(ThemeMode.light);

  static void toggleTheme() {
    themeMode.value =
        themeMode.value == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
  }

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: AppColors.primaryLight,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: _createMaterialColor(AppColors.primaryLight),
        brightness: Brightness.light,
      ).copyWith(
        secondary: AppColors.accentLight,
      ),
      scaffoldBackgroundColor: AppColors.backgroundLight,
      cardColor: AppColors.cardLight,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.archivo(
            fontSize: 57,
            fontWeight: FontWeight.w400,
            color: AppColors.textLight),
        displayMedium: GoogleFonts.archivo(
            fontSize: 45,
            fontWeight: FontWeight.w400,
            color: AppColors.textLight),
        displaySmall: GoogleFonts.archivo(
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: AppColors.textLight),
        headlineLarge: GoogleFonts.archivo(
            fontSize: 32,
            fontWeight: FontWeight.w400,
            color: AppColors.textLight),
        headlineMedium: GoogleFonts.archivo(
            fontSize: 28,
            fontWeight: FontWeight.w400,
            color: AppColors.textLight),
        headlineSmall: GoogleFonts.archivo(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: AppColors.textLight),
        titleLarge: GoogleFonts.archivo(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: AppColors.textLight),
        titleMedium: GoogleFonts.archivo(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.textLight),
        titleSmall: GoogleFonts.archivo(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textLight),
        bodyLarge: GoogleFonts.archivo(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.textLight),
        bodyMedium: GoogleFonts.archivo(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.textLight),
        bodySmall: GoogleFonts.archivo(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.textLight),
        labelLarge: GoogleFonts.archivo(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textLight),
        labelMedium: GoogleFonts.archivo(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.textLight),
        labelSmall: GoogleFonts.archivo(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: AppColors.textLight),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundLight,
        elevation: 0,
        titleTextStyle: GoogleFonts.archivo(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.textLight,
        ),
        iconTheme: const IconThemeData(color: AppColors.textLight),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.cardLight,
        hintStyle: GoogleFonts.archivo(color: AppColors.greyText),
        prefixIconColor: AppColors.greyText,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.cardLight,
        selectedColor: AppColors.chipBackgroundLight,
        labelStyle: GoogleFonts.archivo(color: AppColors.textLight),
        secondaryLabelStyle: GoogleFonts.archivo(color: AppColors.primaryLight),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryDark,
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: _createMaterialColor(AppColors.primaryDark),
        brightness: Brightness.dark,
      ).copyWith(
        secondary: AppColors.accentDark,
      ),
      scaffoldBackgroundColor: AppColors.backgroundDark,
      cardColor: AppColors.cardDark,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.archivo(
            fontSize: 57,
            fontWeight: FontWeight.w400,
            color: AppColors.textDark),
        displayMedium: GoogleFonts.archivo(
            fontSize: 45,
            fontWeight: FontWeight.w400,
            color: AppColors.textDark),
        displaySmall: GoogleFonts.archivo(
            fontSize: 36,
            fontWeight: FontWeight.w400,
            color: AppColors.textDark),
        headlineLarge: GoogleFonts.archivo(
            fontSize: 32,
            fontWeight: FontWeight.w400,
            color: AppColors.textDark),
        headlineMedium: GoogleFonts.archivo(
            fontSize: 28,
            fontWeight: FontWeight.w400,
            color: AppColors.textDark),
        headlineSmall: GoogleFonts.archivo(
            fontSize: 24,
            fontWeight: FontWeight.w400,
            color: AppColors.textDark),
        titleLarge: GoogleFonts.archivo(
            fontSize: 22,
            fontWeight: FontWeight.w500,
            color: AppColors.textDark),
        titleMedium: GoogleFonts.archivo(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: AppColors.textDark),
        titleSmall: GoogleFonts.archivo(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textDark),
        bodyLarge: GoogleFonts.archivo(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.textDark),
        bodyMedium: GoogleFonts.archivo(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: AppColors.textDark),
        bodySmall: GoogleFonts.archivo(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.textDark),
        labelLarge: GoogleFonts.archivo(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.textDark),
        labelMedium: GoogleFonts.archivo(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.textDark),
        labelSmall: GoogleFonts.archivo(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: AppColors.textDark),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundDark,
        elevation: 0,
        titleTextStyle: GoogleFonts.archivo(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.textDark,
        ),
        iconTheme: const IconThemeData(color: AppColors.textDark),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.cardDark,
        hintStyle: GoogleFonts.archivo(color: AppColors.accentDark),
        prefixIconColor: AppColors.accentDark,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.cardDark,
        selectedColor: AppColors.chipBackgroundDark,
        labelStyle: GoogleFonts.archivo(color: AppColors.textDark),
        secondaryLabelStyle: GoogleFonts.archivo(color: AppColors.primaryDark),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: const BorderSide(color: Colors.transparent),
        ),
      ),
    );
  }

  static MaterialColor _createMaterialColor(Color color) {
    List strengths = <double>[.05];
    Map<int, Color> swatch = {};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }
}
