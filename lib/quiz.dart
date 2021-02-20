import 'package:flutter/material.dart';
import './questions.dart';
import './answers.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final Function answerQuestion;
  final int questionIndex;

  const Quiz({
    @required this.questions,
    @required this.answerQuestion,
    @required this.questionIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Questions(questions[questionIndex]['questionText']),
          ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
              .map((answer) {
            return Answers(
                selectHandler: () => answerQuestion(answer['score']),
                btnText: answer['text']);
          }).toList(),
        ],
      ),
    );
  }
}
