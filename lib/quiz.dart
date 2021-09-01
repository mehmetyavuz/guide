import 'package:flutter/material.dart';

import 'question.dart';
import 'aswer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({this.questions, this.answerQuestion, this.questionIndex});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(_questions[_qIndex]['questionText'].toString()),
        ...(_questions[_qIndex]['answers'] as List<String>).map((answer) {
          return Answer(_chooseAnswer, answer);
        }).toList()
      ],
    );
  }
}
