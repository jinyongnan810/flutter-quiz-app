import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // const questions = ['Question 1', 'Question 2'];
    return MaterialApp(
        title: 'QuizApp',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Column(
            children: [
              Text('First Question'),
              ElevatedButton(
                child: Text('Answer 1'),
                onPressed: () => {},
              ),
              ElevatedButton(
                child: Text('Answer 2'),
                onPressed: () => {},
              ),
              Text('Second Question'),
            ],
          ),
        ));
  }
}
