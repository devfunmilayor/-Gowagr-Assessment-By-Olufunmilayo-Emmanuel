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
      primaryColor: AppColors.primaryBlue,
      scaffoldBackgroundColor: AppColors.backgroundGrey,
      cardColor: AppColors.white,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryBlue,
        onPrimary: AppColors.white,
        secondary: AppColors.primaryBlue,
        onSecondary: AppColors.white,
        error: AppColors.dangerRed,
        onError: AppColors.white,
        surface: AppColors.white,
        onSurface: AppColors.black,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.archivo(
            fontSize: 57, fontWeight: FontWeight.w400, color: AppColors.black),
        displayMedium: GoogleFonts.archivo(
            fontSize: 45, fontWeight: FontWeight.w400, color: AppColors.black),
        displaySmall: GoogleFonts.archivo(
            fontSize: 36, fontWeight: FontWeight.w400, color: AppColors.black),
        headlineLarge: GoogleFonts.archivo(
            fontSize: 32, fontWeight: FontWeight.w400, color: AppColors.black),
        headlineMedium: GoogleFonts.archivo(
            fontSize: 28, fontWeight: FontWeight.w400, color: AppColors.black),
        headlineSmall: GoogleFonts.archivo(
            fontSize: 24, fontWeight: FontWeight.w400, color: AppColors.black),
        titleLarge: GoogleFonts.archivo(
            fontSize: 22, fontWeight: FontWeight.w500, color: AppColors.black),
        titleMedium: GoogleFonts.archivo(
            fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.black),
        titleSmall: GoogleFonts.archivo(
            fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.black),
        bodyLarge: GoogleFonts.archivo(
            fontSize: 16,
            fontWeight: FontWeight.w400,
            color: AppColors.lightBigTextColor),
        bodyMedium: GoogleFonts.archivo(
            fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.black),
        bodySmall: GoogleFonts.archivo(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.lightGrey),
        labelLarge: GoogleFonts.archivo(
            fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.black),
        labelMedium: GoogleFonts.archivo(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.lightGrey),
        labelSmall: GoogleFonts.archivo(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: AppColors.lightGrey),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.backgroundGrey,
        elevation: 0,
        titleTextStyle: GoogleFonts.archivo(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
        ),
        iconTheme: const IconThemeData(color: AppColors.black),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: Colors.transparent,
        hintStyle:
            GoogleFonts.archivo(color: AppColors.lightGrey, fontSize: 12),
        prefixIconColor: AppColors.lightGrey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: AppColors.lightGrey, width: 0.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: AppColors.lightGrey, width: 0.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide(color: AppColors.lightGrey, width: 0.5),
        ),
      ),
      iconTheme: const IconThemeData(color: AppColors.mediumGrey),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: AppColors.primaryBlue,
      scaffoldBackgroundColor: AppColors.black,
      cardColor: AppColors.darkGrey,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryBlue,
        onPrimary: AppColors.white,
        secondary: AppColors.primaryBlue,
        onSecondary: AppColors.white,
        error: AppColors.dangerRed,
        onError: AppColors.white,
        surface: AppColors.darkGrey,
        onSurface: AppColors.white,
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.archivo(
            fontSize: 57, fontWeight: FontWeight.w400, color: AppColors.white),
        displayMedium: GoogleFonts.archivo(
            fontSize: 45, fontWeight: FontWeight.w400, color: AppColors.white),
        displaySmall: GoogleFonts.archivo(
            fontSize: 36, fontWeight: FontWeight.w400, color: AppColors.white),
        headlineLarge: GoogleFonts.archivo(
            fontSize: 32, fontWeight: FontWeight.w400, color: AppColors.white),
        headlineMedium: GoogleFonts.archivo(
            fontSize: 28, fontWeight: FontWeight.w400, color: AppColors.white),
        headlineSmall: GoogleFonts.archivo(
            fontSize: 24, fontWeight: FontWeight.w400, color: AppColors.white),
        titleLarge: GoogleFonts.archivo(
            fontSize: 22, fontWeight: FontWeight.w500, color: AppColors.white),
        titleMedium: GoogleFonts.archivo(
            fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.white),
        titleSmall: GoogleFonts.archivo(
            fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.white),
        bodyLarge: GoogleFonts.archivo(
            fontSize: 16, fontWeight: FontWeight.w400, color: AppColors.white),
        bodyMedium: GoogleFonts.archivo(
            fontSize: 14, fontWeight: FontWeight.w400, color: AppColors.white),
        bodySmall: GoogleFonts.archivo(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: AppColors.lightGrey),
        labelLarge: GoogleFonts.archivo(
            fontSize: 14, fontWeight: FontWeight.w500, color: AppColors.white),
        labelMedium: GoogleFonts.archivo(
            fontSize: 12,
            fontWeight: FontWeight.w500,
            color: AppColors.lightGrey),
        labelSmall: GoogleFonts.archivo(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: AppColors.lightGrey),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.black,
        elevation: 0,
        titleTextStyle: GoogleFonts.archivo(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.white,
        ),
        iconTheme: const IconThemeData(color: AppColors.white),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.darkGrey,
        hintStyle:
            GoogleFonts.archivo(color: AppColors.lightGrey, fontSize: 12),
        prefixIconColor: AppColors.mediumGrey,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: BorderSide.none,
        ),
      ),
      iconTheme: const IconThemeData(color: AppColors.mediumGrey),
    );
  }

  static MaterialColor _createMaterialColor(Color color) {
    List<double> strengths = [.05];
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
