import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class QA {
  String question = '';
  List<String> answers = [];
  QA(String question, List<String> answers) {
    this.question = question;
    this.answers = answers;
  }
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  List<QA> qas = [
    QA('Q1', ['A1-1', 'A1-2']),
    QA('Q2', ['A2-1', 'A2-2', 'A2-3']),
    QA('Q3', ['A3-1', 'A3-2', 'A3-3']),
  ];
  int questionIndex = 0;
  void onAnswerSelected() {
    print('questionIndex:$questionIndex');
    if (questionIndex == qas.length - 1) {
      return;
    }
    setState(() {
      questionIndex++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QuizApp',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: [
              Text(qas[questionIndex].question),
              ...qas[questionIndex].answers.map((e) {
                return ElevatedButton(
                  child: Text(e),
                  onPressed: onAnswerSelected,
                );
              })
            ],
          ),
        ));
  }
}
