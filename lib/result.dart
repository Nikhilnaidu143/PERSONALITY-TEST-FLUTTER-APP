import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final VoidCallback resetQuiz;

  Result(this.resultScore, this.resetQuiz);

  String get resultMessage {
    String resultText;
    if (resultScore >= 8 && resultScore < 12) {
      resultText = 'You are bad...!' + '\nscore : ' + resultScore.toString();
    } else if (resultScore >= 12 && resultScore < 16) {
      resultText = 'Pretty likeable' + '\nscore : ' + resultScore.toString();
    } else if (resultScore >= 16) {
      resultText =
          'You are awesome...!' + '\nscore : ' + resultScore.toString();
    } else if (resultScore < 8) {
      resultText = 'You are so bad...!' + '\nscore : ' + resultScore.toString();
    } else {
      resultText =
          'You are so great...!' + '\nscore : ' + resultScore.toString();
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        Text(
          resultMessage,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        OutlinedButton(
          onPressed: resetQuiz,
          child: Text('Restart'),
          // color: Colors.blue,
          // textColor: Colors.white,
          style: OutlinedButton.styleFrom(
            primary: Colors.blue,
            side: BorderSide(color: Colors.blue),
          ),
        ),
      ]),
    );
  }
}
