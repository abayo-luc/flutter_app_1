import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  final int questionIndex;
  final Function handleAnswer;
  Quiz(
      {@required this.questions,
      @required this.questionIndex,
      @required this.handleAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]['question']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(() => handleAnswer(answer['score']), answer['text']);
        }).toList(),
      ],
    );
  }
}
