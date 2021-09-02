import 'package:flutter/material.dart';
import 'package:guide/result.dart';

import 'quiz.dart';
import 'result.dart';

// void main() {
//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'answers': [
        {'text': 'blue', 'score': 6},
        {'text': 'red', 'score': 4},
        {'text': 'green', 'score': 7},
        {'text': 'white', 'score': 11}
      ],
    },
    {
      'questionText': 'What\'s your fav animal?',
      'answers': [
        {'text': 'dog', 'score': 3},
        {'text': 'cat', 'score': 4},
        {'text': 'horse', 'score': 10},
        {'text': 'bear', 'score': 5}
      ],
    },
    {
      'questionText': 'What\'s your fav sport?',
      'answers': [
        {'text': 'football', 'score': 7},
        {'text': 'baseball', 'score': 2},
        {'text': 'basketball', 'score': 10},
        {'text': 'ballball', 'score': 1}
      ]
    }
  ];
  var _qIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    print(score);
    _totalScore += score;
    print(_totalScore);

    setState(() {
      _qIndex++;
    });
  }

  void _restart() {
    setState(() {
      _qIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('ssss'),
        ),
        body: _qIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _qIndex,
                answerQuestion: _answerQuestion)
            : Result(_totalScore, _restart),
      ),
    );
  }
}
