import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String text;

  const Question({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
    );
  }
}
