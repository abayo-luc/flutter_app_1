import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];
  var questionIndex = 0;
  void handleAnswer() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  @override
  Widget build(BuildContext contenxt) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First App')),
        body: Column(
          children: [
            Text(questions[questionIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: handleAnswer,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: handleAnswer,
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
