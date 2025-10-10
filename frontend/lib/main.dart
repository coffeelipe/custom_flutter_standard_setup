import 'package:clam_project/src/core/app_theme.dart';
import 'package:clam_project/src/pages/mobile/onboarding_page.dart';
import 'package:clam_project/src/pages/web/web_home_page.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (kIsWeb) {
      return const WebApp();
    } else {
      return const MobileApp();
    }
  }
}

class MobileApp extends StatelessWidget {
  const MobileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      routes: {'/onboarding': (context) => const OnboardingPage()},
      home: const OnboardingPage(),
    );
  }
}

class WebApp extends StatelessWidget {
  const WebApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Admin Panel', home: WebHomePage());
  }
}
