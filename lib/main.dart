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
    QA('Q1', ['A1-1', 'A1-2']),
    QA('Q2', ['A2-1', 'A2-2', 'A2-3']),
    QA('Q3', ['A3-1', 'A3-2', 'A3-3']),
  ];
  int _questionIndex = 0;
  void _onAnswerSelected() {
    print('questionIndex:$_questionIndex');
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
              : Result(text: 'Thank you for answering!'),
        ));
  }
}
