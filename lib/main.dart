import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext contenxt) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('First App')),
        body: Text('This is my default text!'),
      ),
    );
  }
}
