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
      tertiary: Palette.accentColor,
      surface: Palette.backgroundColor,
      error: Palette.errorColor,
      onPrimary: Palette.textColorLight,
      onSecondary: Palette.textColorLight,
      onSurface: Palette.textColor,
      onError: Palette.textColorLight,
    ),
    inputDecorationTheme: InputDecorationTheme(
      disabledBorder: enabledOutlineInputBorder(),
      enabledBorder: enabledOutlineInputBorder(),
    ),
  );

  static OutlineInputBorder disabledOutlineInputBorderDark() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      style: BorderStyle.solid,
      color: Palette.inputBorderColorDark,
      width: 2,
    ),
  );

  static OutlineInputBorder enabledOutlineInputBorderDark() => OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
    borderSide: const BorderSide(
      style: BorderStyle.solid,
      color: Palette.primaryColorDark,
      width: 2,
    ),
  );

  static final darkTheme = ThemeData.dark().copyWith(
    textTheme: ThemeData.dark().textTheme.apply(fontFamily: bodyFont),
    scaffoldBackgroundColor: Palette.backgroundColorDark,
    colorScheme: ColorScheme.fromSwatch(brightness: Brightness.dark).copyWith(
      primary: Palette.primaryColorDark,
      secondary: Palette.secondaryColorDark,
      tertiary: Palette.accentColorDark,
      surface: Palette.surfaceColorDark,
      error: Palette.errorColor,
      onPrimary: Palette.textColorDarkLight,
      onSecondary: Palette.textColorDarkLight,
      onSurface: Palette.textColorDark,
      onError: Palette.textColorDarkLight,
    ),
    inputDecorationTheme: InputDecorationTheme(
      disabledBorder: enabledOutlineInputBorderDark(),
      enabledBorder: enabledOutlineInputBorderDark(),
    ),
  );
}
