import 'package:clam_project/src/core/utils/responsive_utils.dart';
import 'package:flutter/material.dart';

class AppTypography {
  /// Heading 1 style - Largest heading
  static TextStyle heading1(BuildContext context) => TextStyle(
    fontSize: Responsive.fontSize(context, 32),
    fontWeight: FontWeight.bold,
  );

  /// Heading 2 style - Second largest heading
  static TextStyle heading2(BuildContext context) => TextStyle(
    fontSize: Responsive.fontSize(context, 24),
    fontWeight: FontWeight.bold,
  );

  /// Heading 3 style - Third largest heading
  static TextStyle heading3(BuildContext context) => TextStyle(
    fontSize: Responsive.fontSize(context, 20),
    fontWeight: FontWeight.w600,
  );

  /// Body Large style - Largest body text
  static TextStyle bodyLarge(BuildContext context) => TextStyle(
    fontSize: Responsive.fontSize(context, 16),
    fontWeight: FontWeight.normal,
  );

  /// Body Medium style - Medium body text
  static TextStyle bodyMedium(BuildContext context) => TextStyle(
    fontSize: Responsive.fontSize(context, 14),
    fontWeight: FontWeight.normal,
  );

  /// Body Small style - Smallest body text
  static TextStyle bodySmall(BuildContext context) => TextStyle(
    fontSize: Responsive.fontSize(context, 12),
    fontWeight: FontWeight.normal,
  );
}
