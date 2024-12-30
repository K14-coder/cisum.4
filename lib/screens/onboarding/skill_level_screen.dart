import 'package:flutter/material.dart';

class SkillLevelScreen extends StatefulWidget {
  const SkillLevelScreen({Key? key}) : super(key: key);

  @override
  State<SkillLevelScreen> createState() => _SkillLevelScreenState();
}

class _SkillLevelScreenState extends State<SkillLevelScreen> {
  String _selectedLevel = 'Beginner';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Select Your Skill Level')),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              RadioListTile<String>(
                title: const Text('Beginner'),
                value: 'Beginner',
                groupValue: _selectedLevel,
                onChanged: (value) {
                  setState(() {
                    _selectedLevel = value!;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Intermediate'),
                value: 'Intermediate',
                groupValue: _selectedLevel,
                onChanged: (value) {
                  setState(() {
                    _selectedLevel = value!;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text('Advanced'),
                value: 'Advanced',
                groupValue: _selectedLevel,
                onChanged: (value) {
                  setState(() {
                    _selectedLevel = value!;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // In a real scenario, we’d store _selectedLevel in a user model or shared preferences
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const NameScreen()),
                  );
                },
                child: const Text('Next'),
              )
            ],
          ),
        ),
      ),
    );
  }
}