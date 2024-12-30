import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/onboarding/welcome_screen.dart';
// Import other screens as needed

void main() {
  runApp(const CisumApp());
}

class CisumApp extends StatelessWidget {
  const CisumApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cisum',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/welcome',
      routes: {
        '/welcome': (context) => const WelcomeScreen(),
        '/home': (context) => const HomeScreen(),
      },
    );
  }
}