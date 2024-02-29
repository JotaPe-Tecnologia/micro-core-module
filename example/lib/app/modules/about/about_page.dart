import 'package:example/app/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:micro_core_module/micro_core_module.dart';

final class AboutPage extends StatelessWidget {
  final String name;

  const AboutPage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('About Page'),
            const SizedBox(height: 16),
            Text('Name: $name'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Home'),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                AppRoutes.contact,
                arguments: const AppRouteArguments(
                  data: {'age': 25},
                  transition: FadeOutTransition(),
                ),
              ),
              child: const Text('Contact'),
            ),
          ],
        ),
      ),
    );
  }
}
