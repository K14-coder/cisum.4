import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Welcome to Cisum!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to next step: SkillLevelScreen
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SkillLevelScreen()),
                  );
                },
                child: const Text('Get Started'),
              ),
              TextButton(
                onPressed: () {
                  // For now, this 'skip' just goes straight to the HomeScreen
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text('Skip'),
              )
            ],
          ),
        ),
      ),
    );
  }
}