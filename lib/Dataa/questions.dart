import 'package:ali_hammoud_test/models/answer.dart';
import 'package:ali_hammoud_test/models/question.dart';
import 'package:ali_hammoud_test/models/personality.dart';
final List<Question> questions = [
  Question(
    text: 'How do you approach a difficult decision?',
    answers: [
      Answer('Analyze all options logically', Personality.Thinker),
      Answer('Go with what feels right emotionally', Personality.Feeler),
      Answer('Make a checklist and plan it out', Personality.Planner),
      Answer('Take a leap and deal with results later', Personality.Adventurer),
    ],
  ),
  Question(
    text: 'What excites you the most?',
    answers: [
      Answer('Solving complex problems', Personality.thinker),
      Answer('Connecting deeply with others', Personality.feeler),
      Answer('Creating a clear path to your goals', Personality.planner),
      Answer('Exploring something new', Personality.adventurer),
    ],
  ),
  Question(
    text: 'Which best describes your work style?',
    answers: [
      Answer('Detail-focused and logical', Personality.thinker),
      Answer('People-centered and intuitive', Personality.feeler),
      Answer('Organized and systematic', Personality.planner),
      Answer('Flexible and spontaneous', Personality.adventurer),
    ],
  ),
  Question(
    text: 'How do you recharge after a long day?',
    answers: [
      Answer('Quiet reflection or reading', Personality.thinker),
      Answer('Spending time with close friends', Personality.feeler),
      Answer("Planning tomorrow's tasks", Personality.planner),
      Answer('Doing something active or exciting', Personality.adventurer),
    ],
  ),
  Question(
    text: 'You’re most comfortable when...',
    answers: [
      Answer('Things make logical sense', Personality.thinker),
      Answer('Everyone is getting along', Personality.feeler),
      Answer('There’s a clear structure', Personality.planner),
      Answer('You’re free to try new things', Personality.adventurer),
    ],
  ),
  Question(
    text: 'Your biggest strength is...',
    answers: [
      Answer('Thinking critically', Personality.thinker),
      Answer('Empathizing with others', Personality.feeler),
      Answer('Staying organized', Personality.planner),
      Answer('Being adventurous', Personality.adventurer),
    ],
  ),
];
