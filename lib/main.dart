import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Map<String, Object>> _questions = const [
    {
      'questionText': 'Whats your favourite Color ? ',
      'answers': [
        {'text': 'blue', 'score': 10},
        {'text': 'green', 'score': 7},
        {'text': 'red', 'score': 4},
        {'text': 'white', 'score': 2}
      ]
    },
    {
      'questionText': 'Whats your favourite Hobby ? ',
      'answers': [
        {'text': 'Cricket', 'score': 10},
        {'text': 'footbal', 'score': 7},
        {'text': 'Hockey', 'score': 4},
        {'text': 'Snooker', 'score': 2}
      ]
    },
    {
      'questionText': 'Whats your favourite Animal ? ',
      'answers': [
        {'text': 'CAT', 'score': 10},
        {'text': 'DOG', 'score': 7},
        {'text': 'DEER', 'score': 4},
        {'text': 'Rabbit', 'score': 2}
      ]
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  _questionAnswer(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });

    _questionIndex < _questions.length
        ? print('${_questions.length - _questionIndex} More Question')
        : print('No More Question');
  }

  _resetQuiz() {
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
          title: Text('My First App'),
          centerTitle: true,
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _questionAnswer,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(
                resultScore: _totalScore,
                resetQuiz: _resetQuiz,
              ),
      ),
    );
  }
}
