import 'package:flutter/material.dart';
import 'package:menuchap/config/theme_config/pallete.dart';


class AppTheme {
  AppTheme._();

  static final ThemeData light = ThemeData(
    primaryColor: Palette.primary,
    primarySwatch: generateMaterialColor(Palette.primary),
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: Palette.primary),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: Palette.primary,
    ),
  );
  static final ThemeData dark = ThemeData(
    primaryColor: Palette.accentColorBeige,
    brightness: Brightness.dark,
    primarySwatch: generateMaterialColor(Palette.accentColorBeige),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    iconTheme: const IconThemeData(color: Palette.accentColorBeige),
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Palette.accentColorBeige),
    // iconTheme: IconThemeData(
    //   color: Colors.white,
    // ),
  );
}
