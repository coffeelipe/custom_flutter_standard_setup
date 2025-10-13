import 'package:flutter/material.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Admin Panel')),
      body: const Center(
        child: Text('Welcome to the Admin Panel!\n under construction...'),
      ),
    );
  }
}
