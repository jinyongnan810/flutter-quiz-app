import 'package:flutter/material.dart';
import './quiz.dart';
import './result.dart';
import './types.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  List<QA> _qas = [
    QA('Q1', [QuizAnswer('A1-1', 1), QuizAnswer('A1-2', 2)]),
    QA('Q2',
        [QuizAnswer('A2-1', 1), QuizAnswer('A2-2', 2), QuizAnswer('A2-3', 3)]),
    QA('Q3',
        [QuizAnswer('A3-1', 1), QuizAnswer('A3-2', 2), QuizAnswer('A3-3', 3)]),
  ];
  int _questionIndex = 0;
  int _totalScore = 0;
  void _onAnswerSelected(int score) {
    print('questionIndex:$_questionIndex');
    _totalScore += score;
    setState(() {
      _questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QuizApp',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: _questionIndex < _qas.length
              ? Quiz(
                  qas: _qas,
                  questionIndex: _questionIndex,
                  onAnswerSelected: _onAnswerSelected)
              : Result(totalScore: _totalScore),
        ));
  }
}
