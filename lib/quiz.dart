import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final questions;
  final answerQuestion;
  final _index;

  Quiz(this.questions, this.answerQuestion, this._index);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      children: <Widget>[
        Question(
          questions[_index]['questionText'],
        ),
        ...(questions[_index]['answers'] as List<Map<String, Object>>)
            .map((option) {
          return Answer(() => answerQuestion(option['score']), option['text']);
        }).toList(),
      ],
    );
    return column;
  }
}
