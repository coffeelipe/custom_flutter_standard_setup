import 'package:clam_project/src/core/app_palette.dart';
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
              const Text(
                'CLAM',
                style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Bacalisties',
                  fontWeight: FontWeight.bold,
                  color: Palette.primaryColor,
                ),
              ),
              const Text(
                'Conectando negócios e clientes',
                style: TextStyle(
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
                      const Text(
                        'Bem-vindo!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Palette.primaryColor,
                        ),
                      ),
                      const Text(
                        'Descubra serviços incríveis perto de você.',
                        style: TextStyle(color: Palette.softTextColor),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minWidth: 400),
                        child: CustomElevatedButton.gradient(
                          onPressed: () => print('pressed sign in'),
                          gradient: Palette.primaryGradient,
                          child: const Text('Entrar'),
                        ),
                      ),
                      ConstrainedBox(
                        constraints: const BoxConstraints(minWidth: 400),
                        child: CustomElevatedButton.gradient(
                          onPressed: () => print('pressed sign up'),
                          gradient: Palette.primaryGradient,
                          child: const Text('Cadastrar'),
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
