import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final int score;
  Results(this.score);
  String get resultsPhase {
    String resultsText;
    if (score <= 8) {
      resultsText = 'You are awosame and innocent!';
    } else if (score <= 12) {
      resultsText = 'You are likeable!';
    } else if (score <= 16) {
      resultsText = 'You are strange';
    } else {
      resultsText = 'You are so damn bad!';
    }
    return resultsText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, right: 15),
      child: Center(
        child: Text(
          resultsPhase,
          style: TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
