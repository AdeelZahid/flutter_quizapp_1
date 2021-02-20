import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;

  Result({@required this.resultScore, @required this.resetQuiz});

  String get resultPhrase {
    String resultText = 'You did it...';

    return resultScore <= 12
        ? resultText = 'You are Innocent'
        : resultScore <= 17
            ? resultText = 'You are good'
            : resultScore <= 22
                ? resultText = 'You are awesome'
                : resultScore <= 30
                    ? resultText = 'You are Brillient'
                    : resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            '$resultPhrase \n Score is $resultScore',
            style: TextStyle(fontSize: 22.0, fontWeight: FontWeight.w500),
          ),
          FlatButton(
            padding: EdgeInsets.symmetric(vertical: 22.0),
            onPressed: resetQuiz,
            child: Text(
              'Restart Quiz ... ',
              style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.w300),
            ),
            textColor: Colors.blue,
          )
        ],
      ),
    );
  }
}
