import 'dart:io';
import 'package:quiz_am_app/questions.dart';

void main() {
  List<Question> questions = getQuestions();
  int score = 0;

  for (var question in questions) {
    print(question.questionText);
    for (int i = 0; i < question.options.length; i++) {
      print('${i + 1}. ${question.options[i]}');
    }

    int? userAnswer = getUserInput();
    if (userAnswer != null && userAnswer - 1 == question.correctOptionIndex) {
      score++;
    }
  }

  print('Your total score is: $score');
}

int? getUserInput() {
  print('Enter your answer (1-3):');
  String? input = stdin.readLineSync();
  return input != null ? int.tryParse(input) : null;
}
