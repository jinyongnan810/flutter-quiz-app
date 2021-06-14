import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
import './types.dart';

class Quiz extends StatelessWidget {
  List<QA> qas;
  int questionIndex;
  VoidCallback onAnswerSelected;
  Quiz(
      {required this.qas,
      required this.questionIndex,
      required this.onAnswerSelected});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(qas[questionIndex].question),
        ...qas[questionIndex].answers.map((e) {
          return Answer(e, onAnswerSelected);
        })
      ],
    );
  }
}
