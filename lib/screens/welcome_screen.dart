import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/logo.png', height: 150), // Add your logo
            const SizedBox(height: 20),
            const Text(
              'BiteBack',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Waste to Want',
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 50),
            const Text(
              'Your Welcome',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/register');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color
              ),
              child: const Text('Get Started'),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Exit the app
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green, // Background color
              ),
              child: const Text('Exit'),
            ),
          ],
        ),
      ),
    );
  }
}
