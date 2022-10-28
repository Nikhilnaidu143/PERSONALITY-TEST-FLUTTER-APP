import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(PracticeApp());

class PracticeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _PracticeAppState();
  }
}

class _PracticeAppState extends State<PracticeApp> {
  static const _questions = [
    {
      'question': 'what\s your favorite colour?',
      'answer': [
        {
          'text': 'Green',
          'score': 10,
        },
        {
          'text': 'Red',
          'score': 5,
        },
        {
          'text': 'Black',
          'score': 1,
        },
        {
          'text': 'Blue',
          'score': 7,
        },
      ],
    },
    {
      'question': 'what\s your favorite car company?',
      'answer': [
        {
          'text': 'Audi',
          'score': 5,
        },
        {
          'text': 'Benz',
          'score': 8,
        },
        {
          'text': 'Bugati',
          'score': 2,
        },
        {
          'text': 'BMW',
          'score': 10,
        },
      ],
    },
    {
      'question': 'what\s your favorite mobile company?',
      'answer': [
        {
          'text': 'Iqoo',
          'score': 10,
        },
        {
          'text': 'Asus',
          'score': 7,
        },
        {
          'text': 'Samsung',
          'score': 2,
        },
        {
          'text': 'Apple',
          'score': 4,
        },
      ],
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;
  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
    print(_questionIndex);
  }

  void _restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Nikhil's App"),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
