import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  int totalScore;
  Result({required this.totalScore});
  String get scorePhrase {
    return 'Your score is:$totalScore';
  }

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(scorePhrase));
  }
}
