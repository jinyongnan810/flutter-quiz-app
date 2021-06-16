import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  VoidCallback reset;
  Result({required this.totalScore, required this.reset});
  String get scorePhrase {
    return 'Your score is:$totalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(scorePhrase),
        TextButton(onPressed: this.reset, child: Text('Restart Quiz'))
      ],
    ));
  }
}
