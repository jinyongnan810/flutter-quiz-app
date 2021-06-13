import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _text; // final to show this field will not be changed

  Question(this._text);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10),
        child: Text(
          _text,
          style: TextStyle(fontSize: 26),
          textAlign: TextAlign.center,
        ));
  }
}
