import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function reset;

  Result(this.totalScore, this.reset);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (totalScore <= 8) {
      resultText = 'You are awesome and innocent';
    } else if (totalScore <= 12) {
      resultText = 'Pretty Likable!';
    } else
      resultText = 'Go Home Buddy!';
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: <Widget>[
        Text(
          resultPhrase,
          style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        ),
        FlatButton(
          child: Text('Restart Quiz!'),
          onPressed: reset,
          textColor: Colors.blue,
        )
      ],
    ));
  }
}
