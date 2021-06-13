import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String _text; // final to show this field will not be changed

  Question(this._text);

  @override
  Widget build(BuildContext context) {
    return Text(_text);
  }
}
