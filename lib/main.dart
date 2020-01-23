import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  void handleAnswer() {
    print('Answer choosen!');
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
            Text('The question!'),
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
