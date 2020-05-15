import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function selectedButton;

  const Answer({Key key, this.answerText, this.selectedButton})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      onPressed: selectedButton,
      child: Text(answerText),
    );
  }
}
