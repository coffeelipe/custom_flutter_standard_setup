import 'package:clam_project/src/core/app_palette.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Utils {
  static void safePrint(Object? object) {
    if (kDebugMode) {
      print(object);
    }
  }

  /// Clear existing SnackBars and show a new one with a background color based on the type.
  /// Parameters:
  /// - [context]: BuildContext to show the SnackBar.
  /// - [message]: The message to display in the SnackBar.
  /// - [type]: Optional type of the SnackBar to determine its background color.
  /// - [duration]: Optional duration for how long the SnackBar should be visible.
  ///
  /// Example usage:
  /// ```dart
  /// Utils.showSnackBar(
  ///   context: context,
  ///   message: 'This is a SnackBar',
  ///   type: SnackBarType.success,
  ///   duration: Duration(seconds: 3),
  /// );
  /// ```
  static showSnackBar({
    /// The BuildContext to show the SnackBar in.
    required BuildContext context,

    /// The message to display in the SnackBar.
    required String message,

    /// The type of the SnackBar to determine its background color.
    /// If not specified, background color defaults to [SnackBarType.info].
    SnackBarType? type,

    /// The duration for how long the SnackBar should be visible.
    /// If not specified, defaults to 2 seconds.
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
