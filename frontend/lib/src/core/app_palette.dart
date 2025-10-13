import 'package:flutter/material.dart';

class Palette {
  // Primary Colors
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

  static const primaryGradient = LinearGradient(
    colors: [primaryColor, secondaryColor, accentColor],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
