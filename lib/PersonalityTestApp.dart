import 'package:flutter/material.dart';
import 'package:ali_hammoud_test/dataa/questions.dart';
import 'models/personality.dart';
import 'package:ali_hammoud_test/screens/startScreen.dart';
import 'package:ali_hammoud_test/screens/questionsScreen.dart';
import 'screens/resultsScreen.dart';

class PersonalityTestApp extends StatefulWidget {
  const PersonalityTestApp({super.key});

  @override
  State<PersonalityTestApp> createState() => _PersonalityTestAppState();
}

class _PersonalityTestAppState extends State<PersonalityTestApp> {
  int currentQuestionIndex = -1;
  final Map<Personality, int> scores = {
    Personality.Thinker: 0,
    Personality.Feeler: 0,
    Personality.Planner: 0,
    Personality.Adventurer: 0,
  };

  void startTest() {
    setState(() {
      currentQuestionIndex = 0;
      scores.updateAll((key, value) => 0);
    });
  }

  void answerQuestion(Personality personality) {
    scores[personality] = scores[personality]! + 1;

    setState(() {
      currentQuestionIndex++;
    });
  }

  void restartTest() {
    setState(() {
      currentQuestionIndex = -1;
      scores.updateAll((key, value) => 0);
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screen;

    if (currentQuestionIndex == -1) {
      screen = StartScreen(onStart: startTest);
    } else if (currentQuestionIndex < questions.length) {
      screen = QuestionScreen(
        question: questions[currentQuestionIndex],
        onAnswer: answerQuestion,
      );
    } else {
      final topPersonality = scores.entries.reduce((a, b) => a.value > b.value ? a : b).key;
      screen = ResultScreen(result: topPersonality, onRestart: restartTest);
    }

    return Scaffold(
      appBar: AppBar(title: Text('Personality Test')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: screen,
      ),
    );
  }
}
