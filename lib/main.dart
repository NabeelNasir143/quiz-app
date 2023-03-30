import 'package:flutter/material.dart';
import 'package:quiz/result.dart';
import './question.dart';
import './answer.dart';
import './quiz.dart';
import './result.dart';

void main() {
  runApp(Quiz());
}

class Quiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return QuizState();
  }
}

class QuizState extends State<Quiz> {
  static const questions = [
    {
      'questionText': 'whats youre fave color',
      'answer': ['blue', 'black', 'orange', 'teal'],
    },
    {
      'questionText': 'whats youre fave game',
      'answer': ['footbal', 'ludo', 'hockey', 'cricket'],
    },
    {
      'questionText': 'whats youre fave animal',
      'answer': ['goat', 'cow', 'cat', 'lion'],
    },
    {
      'questionText': 'whats youre fave player',
      'answer': ['husnain', 'shaheen', 'afridi', 'messi'],
    },
  ];
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
    if (questionIndex < questions.length) {
      print('we have more quesrions');
    } else {
      print('no more questions');
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: questionIndex < questions.length
            ? QuizFile(
                questionIndex: questionIndex,
                questions: questions,
                answerQuestion: answerQuestion,
              )
            : Result(),
      ),
    );
  }
}
