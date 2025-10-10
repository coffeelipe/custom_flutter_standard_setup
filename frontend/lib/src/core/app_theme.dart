import 'package:clam_project/src/core/app_palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const bodyFont = 'Goldplay';

  static final lightTheme = ThemeData.light().copyWith(
    textTheme: ThemeData.light().textTheme.apply(fontFamily: bodyFont),
    scaffoldBackgroundColor: Palette.backgroundColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Palette.primaryColor,
      secondary: Palette.secondaryColor,
      surface: Palette.backgroundColor,
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    // Define dark theme properties here in the future
  );
}
