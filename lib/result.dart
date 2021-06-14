import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  String text;
  Result({required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(child: Text(this.text));
  }
}
