import 'package:clam_project/src/core/app_typography.dart';
import 'package:clam_project/src/core/extensions/applocalization_extension.dart';
import 'package:clam_project/src/core/utils/responsive_utils.dart';
import 'package:clam_project/src/widgets/clam_logo.dart';
import 'package:clam_project/src/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:clam_project/src/core/utils/utils.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: Responsive.heightPercentage(context, 90),
          ),
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(
                Responsive.spacing(context, size: SpacingSize.lg),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ClamLogo(),
                  Card(
                    child: Padding(
                      padding: EdgeInsets.all(
                        Responsive.spacing(context, size: SpacingSize.md),
                      ),
                      child: Column(
                        children: [
                          Text(
                            context.l10n.onboardingWelcome,
                            style: AppTypography.heading2(
                              context,
                            ).copyWith(color: context.theme.colorScheme.primary),
                          ),
                          Text(
                            context.l10n.onboardingDescription,
                            textAlign: TextAlign.center,
                            style: AppTypography.bodyMedium(
                              context,
                            ).copyWith(color: context.theme.textTheme.bodyMedium?.color?.withValues(alpha: 0.7)),
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: Responsive.maxContentWidth(context),
                            ),
                            child: CustomElevatedButton.solid(
                              onPressed: () =>
                                  Utils.safePrint('pressed sign in'),
                              backgroundColor: context.theme.colorScheme.primary,
                              child: Text(
                                context.l10n.loginButton,
                                style: AppTypography.bodyMedium(context),
                              ),
                            ),
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              minWidth: Responsive.maxContentWidth(context),
                            ),
                            child: CustomElevatedButton.solid(
                              onPressed: () =>
                                  Navigator.pushNamed(context, '/signup'),
                              backgroundColor: context.theme.colorScheme.tertiary,
                              child: Text(context.l10n.signupButton, style: AppTypography.bodyMedium(context),),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
