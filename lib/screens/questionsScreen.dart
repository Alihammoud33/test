import 'package:flutter/material.dart';
import 'package:ali_hammoud_test/models/question.dart';
import 'package:ali_hammoud_test/models/personality.dart';

class QuestionScreen extends StatelessWidget {
  final Question question;
  final Function(Personality) onAnswer;

  const QuestionScreen({
    required this.question,
    required this.onAnswer,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(question.text, style: TextStyle(fontSize: 18)),
        SizedBox(height: 20),
        ...question.answers.map((answer) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: ElevatedButton(
              onPressed: () => onAnswer(answer.personality),
              child: Text(answer.text),
            ),
          );
        }).toList(),
      ],
    );
  }
}
