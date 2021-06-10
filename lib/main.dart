import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'QuizApp',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz App'),
          ),
          body: Text('Content of Quiz App'),
        ));
  }
}
