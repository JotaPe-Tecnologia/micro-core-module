import 'package:flutter/material.dart';

final class ContactPage extends StatelessWidget {
  final int age;

  const ContactPage({super.key, required this.age});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Contact Page'),
            const SizedBox(height: 16),
            Text('Age: $age'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('About'),
            ),
          ],
        ),
      ),
    );
  }
}
