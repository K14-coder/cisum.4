import 'package:flutter/material.dart';

class NameScreen extends StatefulWidget {
  const NameScreen({Key? key}) : super(key: key);

  @override
  State<NameScreen> createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enter Your Name (Optional)')),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              const Text('What should we call you? (Or leave blank for Guest Mode)'),
              const SizedBox(height: 10),
              TextField(
                controller: _nameController,
                decoration: const InputDecoration(
                  hintText: 'e.g. John Doe',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // If empty, treat as guest.
                  // If not empty, store in user model or preferences
                  Navigator.pushNamed(context, '/home');
                },
                child: const Text('Finish'),
              )
            ],
          ),
        ),
      ),
    );
  }
}