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
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'question': 'What\'s your favorite instructor?',
      'answers': ['Musigwa', 'Caleb', 'Manzi', 'Luc']
    }
  ];
  var _questionIndex = 0;
  void _handleAnswer() {
    if (_questionIndex < _questions.length) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });
    }
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
              : Results()),
    );
  }
}
