import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function() nabeelNasir;
  final String answerText;
  Answer(this.nabeelNasir, this.answerText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(3.1),
        child: ElevatedButton(
            onPressed: nabeelNasir,
            child: Text(
              answerText,
              style: TextStyle(
                color: Colors.black,
              ),
            )),
      ),
    );
  }
}
