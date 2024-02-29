import 'package:example/app/core/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:micro_core_module/micro_core_module.dart';

final class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Home Page'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(
                context,
                AppRoutes.about,
                arguments: const AppRouteArguments(
                  data: {'name': 'João Pedro'},
                  transition: SlideUpTransition(),
                ),
              ),
              child: const Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
