import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, right: 40, left: 40),
      width: double.infinity,
      child: ElevatedButton(
        // style: ElevatedButton.styleFrom(primary: Colors.blue),
        child: Text(this.answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
