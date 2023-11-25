import 'package:abac_challenge/common/custom_material_color.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  // light theme
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: Colors.white,
      secondary: Colors.black,
      tertiary: createMaterialColor(const Color.fromRGBO(167, 35, 58, 1)),
    ),
    useMaterial3: false,
    textTheme: GoogleFonts.montserratTextTheme(),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    popupMenuTheme: const PopupMenuThemeData(color: Colors.white),
  );
  // dark theme
  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: createMaterialColor(const Color.fromRGBO(1, 3, 7, 1)),
      secondary: Colors.white70,
      tertiary: createMaterialColor(const Color.fromRGBO(167, 35, 58, 1)),
    ),
    textTheme: GoogleFonts.montserratTextTheme(),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    popupMenuTheme: PopupMenuThemeData(
        color: createMaterialColor(const Color.fromRGBO(10, 14, 18, 1))),
  );
}
