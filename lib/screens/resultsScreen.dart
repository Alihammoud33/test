import 'package:flutter/material.dart';
import 'package:ali_hammoud_test/models/personality.dart';

final personalityMessages = {
  Personality.Feeler: 'You are a Feeler: Empathetic, warm, and guided by emotion.',
  Personality.Thinker: 'You are a Thinker: Logical, curious, and focused on ideas.',
  Personality.Planner: 'You are a Planner: Organized, strategic, and goal-oriented.',
  Personality.Adventurer: 'You are an Adventurer: Spontaneous, bold, and always exploring.',
};

class ResultScreen extends StatelessWidget {
  final Personality result;
  final VoidCallback onRestart;

  const ResultScreen({
    required this.result,
    required this.onRestart,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            personalityMessages[result] ?? '',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 22),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: onRestart,
            child: Text('Restart'),
          )
        ],
      ),
    );
  }
}
