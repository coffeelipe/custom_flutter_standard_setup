import 'package:clam_project/src/core/app_palette.dart';
import 'package:clam_project/src/core/extensions/applocalization_extension.dart';
import 'package:clam_project/src/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                context.l10n.appTitle,
                style: const TextStyle(
                  fontSize: 40,
                  fontFamily: 'Bacalisties',
                  fontWeight: FontWeight.bold,
                  color: Palette.primaryColor,
                ),
              ),
              Text(
                context.l10n.appSubtitle,
                style: const TextStyle(
                  fontSize: 22,
                  fontFamily: 'Bacalisties',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        context.l10n.onboardingWelcome,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Palette.primaryColor,
                        ),
                      ),
                      Text(
                        context.l10n.onboardingDescription,
                        style: const TextStyle(color: Palette.softTextColor),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minWidth: 400),
                        child: CustomElevatedButton.gradient(
                          onPressed: () => print('pressed sign in'),
                          gradient: Palette.primaryGradient,
                          child: Text(context.l10n.loginButton),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minWidth: 400),
                        child: CustomElevatedButton.gradient(
                          onPressed: () => print('pressed sign up'),
                          gradient: Palette.primaryGradient,
                          child: Text(context.l10n.signupButton),
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
    );
  }
}
