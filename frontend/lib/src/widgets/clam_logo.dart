import 'package:clam_project/src/core/app_palette.dart';
import 'package:clam_project/src/core/app_typography.dart';
import 'package:clam_project/src/core/extensions/applocalization_extension.dart';
import 'package:clam_project/src/core/utils/responsive_utils.dart';
import 'package:flutter/material.dart';

class ClamLogo extends StatelessWidget {
  const ClamLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(
        Responsive.spacing(context, size: SpacingSize.lg),
      ),
      child: Column(
        children: [
          Text(
            context.l10n.appTitle,
            textAlign: TextAlign.center,
            style: Responsive.isDesktop(context)
                ? AppTypography.heading1(context).copyWith(
                    color: Palette.primaryColor,
                    fontFamily: 'Bacalisties',
                    fontSize: Responsive.fontSize(context, 40),
                  )
                : AppTypography.heading1(context).copyWith(
                    color: Palette.primaryColor,
                    fontFamily: 'Bacalisties',
                  ),
          ),
          Text(
            context.l10n.appSubtitle,
            textAlign: TextAlign.center,
            style: AppTypography.heading3(
              context,
            ).copyWith(fontFamily: 'Bacalisties'),
          ),
        ],
      ),
    );
  }
}
