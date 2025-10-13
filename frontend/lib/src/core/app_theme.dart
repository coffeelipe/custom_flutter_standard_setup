import 'package:clam_project/src/core/app_palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static const bodyFont = 'Goldplay';
  static OutlineInputBorder disabledOutlineInputBorder() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      style: BorderStyle.solid,
      color: Palette.inputBorderColor,
      width: 2,
    ),
  );
  static OutlineInputBorder enabledOutlineInputBorder() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      style: BorderStyle.solid,
      color: Palette.primaryColor,
      width: 2,
    ),
  );

  static final lightTheme = ThemeData.light().copyWith(
    textTheme: ThemeData.light().textTheme.apply(fontFamily: bodyFont),
    scaffoldBackgroundColor: Palette.backgroundColor,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      primary: Palette.primaryColor,
      secondary: Palette.secondaryColor,
      surface: Palette.backgroundColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      disabledBorder: enabledOutlineInputBorder(),
      enabledBorder: enabledOutlineInputBorder(),
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    // Define dark theme properties here in the future
  );
}
