import 'package:ali_hammoud_test/models/answer.dart';

class Question {
  final String text;
  final List<Answer> answers;

  Question({
    required this.text,
    required this.answers,
  });
}
