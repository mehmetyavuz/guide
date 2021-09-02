import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback restart;

  Result(this.resultScore, this.restart);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 25) {
      resultText = 'perfect!';
    } else if (resultScore > 15) {
      resultText = 'ehh';
    } else {
      resultText = 'bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: restart,
            child: Text('Restart!'),
          )
        ],
      ),
    );
  }
}
