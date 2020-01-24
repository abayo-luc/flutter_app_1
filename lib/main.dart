import 'package:flutter/material.dart';
import './widgets/quiz.dart';
import './widgets/results.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'question': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 8},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Snake', 'score': 10},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 8}
      ]
    },
    {
      'question': 'What\'s your favorite instructor?',
      'answers': [
        {'text': 'Musigwa', 'score': 2},
        {'text': 'Caleb', 'score': 5},
        {'text': 'Manzi', 'score': 4},
        {'text': 'Luc', 'score': 1}
      ]
    }
  ];
  var _questionIndex = 0;
  var _totalScroe = 0;
  void _handleAnswer(int score) {
    _totalScroe += score;
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
  }

  void _resetQuiz() {
    _totalScroe = 0;
    setState(() {
      _questionIndex = 0;
    });
  }

  @override
  Widget build(BuildContext contenxt) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(title: Text('First App')),
          body: _questionIndex < _questions.length
              ? Quiz(
                  questions: _questions,
                  questionIndex: _questionIndex,
                  handleAnswer: _handleAnswer)
              : Results(_totalScroe, _resetQuiz)),
    );
  }
}
