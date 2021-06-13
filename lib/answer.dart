import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  String _text;
  VoidCallback _onPressed;
  Answer(this._text, this._onPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: double.infinity,
      child: ElevatedButton(
        child: Text(
          _text,
          style: TextStyle(fontSize: 24),
        ),
        onPressed: _onPressed,
        style: ButtonStyle(),
      ),
    );
  }
}
