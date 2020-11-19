import 'package:flutter/material.dart';
import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // ignore: todo
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _index = 0;

  final _questions = const [
    {
      'questionText': 'What\'s your favourite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1}
      ]
    },
    {
      'questionText': 'What\'s your favourite animal?',
      'answers': [
        {'text': 'Lion', 'score': 3},
        {'text': 'Cheetah', 'score': 5},
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 0}
      ]
    },
    {
      'questionText': 'Who\'s your favourite footballer?',
      'answers': [
        {'text': 'Cristiano Ronaldo', 'score': 2},
        {'text': 'Lionel Messi', 'score': 5},
      ]
    },
  ];

  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _index++;
      _totalScore += score;
    });
    print("Answer Chosen");
    print(_index);
  }

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _index = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('My First App'),
          ),
          body: _index < _questions.length
              ? Quiz(_questions, _answerQuestion, _index)
              : Result(
                  _totalScore,
                  _resetQuiz,
                )),
    );
  }
}
