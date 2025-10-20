import 'package:flutter/material.dart';

class Palette {
  // Light Theme Colors
  static const primaryColor = Color(0xFF936274);
  static const secondaryColor = Color(0xFFCE879D);
  static const accentColor = Color(0xFFF4A05B);
  static const backgroundColor = Color(0xFFF2EEE6);
  static const softTextColor = Color(0xFF7A7A7A);
  static const textColor = Color(0xFF333333);
  static const textColorLight = Color(0xFFFDFDFD);

  static const infoColor = Color.fromARGB(255, 114, 114, 114);
  static const warningColor = Color.fromARGB(255, 224, 171, 11);
  static const successColor = Color(0xFF4CAF50);
  static const errorColor = Color.fromARGB(255, 199, 48, 37);

  static const inputBorderColor = Color(0xFFBDBDBD);

  static const primaryGradient = LinearGradient(
    colors: [primaryColor, secondaryColor, accentColor],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  // Dark Theme Colors
  static const primaryColorDark = Color(0xFFCE879D);
  static const secondaryColorDark = Color(0xFF936274);
  static const accentColorDark = Color(0xFFF4A05B);
  static const backgroundColorDark = Color.fromARGB(255, 37, 24, 28);
  static const surfaceColorDark = Color(0xFF1E1E1E);
  static const softTextColorDark = Color(0xFFB0B0B0);
  static const textColorDark = Color(0xFFE5E5E5);
  static const textColorDarkLight = Color(0xFFFFFFFF);

  static const inputBorderColorDark = Color(0xFF424242);

  static const primaryGradientDark = LinearGradient(
    colors: [primaryColorDark, secondaryColorDark, accentColorDark],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
