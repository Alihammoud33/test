import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  final VoidCallback onStart;

  const StartScreen({required this.onStart, super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onStart,
        child: Text('Start Test'),
      ),
    );
  }
}
