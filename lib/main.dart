import 'package:flutter/material.dart';
import './question.dart';

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
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First App')),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: _handleAnswer,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: _handleAnswer,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Answer 3 choosen'),
            )
          ],
        ),
      ),
    );
  }
}
