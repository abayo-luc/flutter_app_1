import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function handlePressed;
  final String answerText;
  Answer(this.handlePressed, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 20, right: 20),
      child: RaisedButton(
        color: Colors.blue,
        child: Text(
          answerText,
          style: TextStyle(color: Colors.white),
        ),
        onPressed: handlePressed,
      ),
    );
  }
}
