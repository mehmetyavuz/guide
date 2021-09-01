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
  var _qIndex = 0;
  final _questions = const [
    {
      'questionText': 'What\'s your fav color?',
      'answers': ['blue', 'red', 'green', 'white'],
    },
    {
      'questionText': 'What\'s your fav animal?',
      'answers': ['dog', 'cat', 'horse', 'bear'],
    },
    {
      'questionText': 'What\'s your fav sport?',
      'answers': ['football', 'baseball', 'basketball', 'ballball'],
    }
  ];

  void _chooseAnswer() {
    setState(() {
      _qIndex++;
    });
    print(_qIndex);
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
                  answerQuestion: _chooseAnswer)
              : Result()),
    );
  }
}
