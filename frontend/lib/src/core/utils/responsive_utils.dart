import 'package:flutter/widgets.dart';
import 'package:clam_project/src/core/extensions/applocalization_extension.dart';

class Responsive {
  // Base dimensions for scaling (iphone 14 as reference)
  // Dimenções base para escala (iPhone 14 como referência)
  static const double _baseWidth = 390.0;
  static const double _baseHeight = 844.0;

  // Screen breakpoints
  // Pontos de interrupção da tela
  static const double mobileBreakpoint = 600.0;
  static const double tabletBreakpoint = 900.0;
  static const double desktopBreakpoint = 1200.0;

  static double fontSize(BuildContext context, double baseFontSize) {
    final screenWidth = context.mediaQuery.size.width;
    return (baseFontSize * (screenWidth / _baseWidth)).clamp(
      baseFontSize * 0.8,
      baseFontSize * 1.5,
    );
  }

  // get width or height as a percentage of screen size
  // obter largura ou altura como uma porcentagem do tamanho da tela
  static double widthPercentage(BuildContext context, double percentage) =>
      context.mediaQuery.size.width * (percentage / 100);

  static double heightPercentage(BuildContext context, double percentage) =>
      context.mediaQuery.size.height * (percentage / 100);

  // max content width for readability
  // largura máxima do conteúdo para legibilidade
  static double maxContentWidth(BuildContext context) {
    final screenWidth = context.mediaQuery.size.width;
    switch (screenWidth) {
      case < mobileBreakpoint:
        return screenWidth * 0.9;
      case < tabletBreakpoint:
        return 500;
      case < desktopBreakpoint:
        return 700;
      default:
        return 900;
    }
  }

  // max content height for readability
  // altura máxima do conteúdo para legibilidade
  static double maxContentHeight(BuildContext context) {
    final screenHeight = context.mediaQuery.size.height;
    switch (screenHeight) {
      case < 600:
        return screenHeight * 0.9;
      case < 900:
        return 600;
      case < 1200:
        return 800;
      default:
        return 1000;
    }
  }

  // Device type checks
  // Verificações de tipo de dispositivo
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < mobileBreakpoint;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= mobileBreakpoint &&
      MediaQuery.of(context).size.width < desktopBreakpoint;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= desktopBreakpoint;

  // Common spacing values
  // Valores comuns de espaçamento
  static double spacing(BuildContext context, {required SpacingSize size}) {
    final baseSpacing = switch (size) {
      SpacingSize.xs => 4.0,
      SpacingSize.sm => 8.0,
      SpacingSize.md => 16.0,
      SpacingSize.lg => 24.0,
      SpacingSize.xl => 32.0,
    };
    return fontSize(context, baseSpacing);
  }
}

enum SpacingSize { xs, sm, md, lg, xl }
