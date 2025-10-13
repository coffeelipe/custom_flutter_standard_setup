import 'package:clam_project/src/core/app_palette.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Utils {
  static void safePrint(Object? object) {
    if (kDebugMode) {
      print(object);
    }
  }

  static showSnackBar({
    required BuildContext context,
    required String message,
    SnackBarType? type,
    Duration? duration,
  }) {
    if (context.mounted) {
      ScaffoldMessenger.of(context).clearSnackBars();
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(fontFamily: 'Poppins', fontSize: 16),
          ),
          backgroundColor: _getSnackBarColor(type),
          duration: duration ?? const Duration(seconds: 2),
        ),
      );
    }
  }
}

enum SnackBarType { info, warning, success, error }

Color _getSnackBarColor(SnackBarType? type) {
  switch (type) {
    case SnackBarType.info:
      return Palette.infoColor;
    case SnackBarType.warning:
      return Palette.warningColor;
    case SnackBarType.success:
      return Palette.successColor;
    case SnackBarType.error:
      return Palette.errorColor;
    default:
      return Palette.infoColor;
  }
}
