import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  var questionText;
  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(12),
      width: double.infinity,
      color: Colors.teal,
      child: Text(
        questionText,
        style: TextStyle(
          fontSize: 30,
          color: Colors.black,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
