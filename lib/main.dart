import 'package:flutter/material.dart';
import './widgets/question.dart';
import './widgets/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _handleAnswer() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext contenxt) {
    var questions = [
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First App')),
        body: Column(
          children: [
            Question(questions[_questionIndex]['question']),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_handleAnswer, answer);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
