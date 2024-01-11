import 'package:flutter/material.dart';
import 'package:flutter_test_task/core/theme/solution_theme.dart';
import 'package:flutter_test_task/core/theme/theme_palette/default_palette.dart';

abstract class VendorOneCoreTheme implements SolutionTheme {
  @override
  SolutionSizeTheme sizeTheme = SolutionSizeTheme(
    iconSize: 36.0,
    buttonBorderRadius: 12.0,
  );

  @override
  SolutionDataTheme dataTheme = SolutionDataTheme(
    privacyPolicy: 'privacyPolicyURL',
  );
}

class VendorThemeOneLight extends VendorOneCoreTheme {
  @override
  ThemeData get themeData {
    return ThemeData(
      useMaterial3: false,
      colorScheme: const ColorScheme.light(
        brightness: Brightness.light,
        primary: DefaultPalette.deepPurpleAccent,
        onPrimary: Colors.white,
        secondary: Color(0xFF03DAC6),
        onSecondary: Colors.black,
        background: Colors.white,
        onBackground: Color(0xFF333333),
        surface: Colors.white,
        onSurface: Color(0xFF333333),
        error: Color(0xFFB00020),
        onError: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        shadowColor: Colors.black,
        color: DefaultPalette.deepPurpleAccent,
      ),
      iconTheme: const IconThemeData(color: DefaultPalette.deepPurpleAccent),
      inputDecorationTheme: const InputDecorationTheme(
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: DefaultPalette.deepPurpleAccent),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: DefaultPalette.deepPurpleAccent, width: 2.0),
        ),
      ),
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          color: DefaultPalette.white,
          fontWeight: FontWeight.w700,
          fontSize: 24,
        ),
        displayMedium: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w600,
          fontSize: 15,
          height: 1,
        ),
        displaySmall: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 16 / 14,
        ),
        headlineLarge: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w700,
          height: 20 / 17,
          fontSize: 17,
        ),
        headlineMedium: TextStyle(
          color: DefaultPalette.blackBackground,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w700,
          fontSize: 16,
          height: 19 / 16,
        ),
        headlineSmall: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w700,
          fontStyle: FontStyle.normal,
          height: 17 / 14,
          fontSize: 14,
        ),
        titleLarge: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w600,
          height: 12 / 12,
          fontSize: 12,
        ),
        titleMedium: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w700,
          fontSize: 15,
          height: 17 / 15,
        ),
        titleSmall: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w600,
          fontSize: 13,
          height: 16 / 13,
        ),
        labelLarge: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w500,
          fontSize: 13,
          height: 16 / 13,
        ),
        labelMedium: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w500,
          fontSize: 15,
          height: 18 / 15,
        ),
        labelSmall: TextStyle(
          color: DefaultPalette.blackBackground,
          fontSize: 20,
          fontWeight: FontWeight.w700,
          height: 24 / 22,
        ),
        bodyLarge: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w700,
          fontSize: 28,
          height: 28 / 28,
        ),
        bodyMedium: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w400,
          fontSize: 14,
          height: 20 / 14,
        ),
        bodySmall: TextStyle(
          color: DefaultPalette.blackBackground,
          fontWeight: FontWeight.w600,
          fontSize: 14,
          height: 17 / 14,
        ),
      ),
    );
  }

  @override
  SolutionAssetsTheme get assetsTheme =>
      SolutionAssetsTheme(logoImage: 'logo2/', envelopeImage: 'assetsTheme');

  @override
  SolutionColorTheme get colorTheme => SolutionColorTheme(
        gray1Color: Colors.greenAccent,
        grayColor: Colors.indigo,
      );
}
