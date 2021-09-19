import 'package:flutter/material.dart';

import 'package:quiz_app/answer.dart';
import 'package:quiz_app/question.dart';

class Quiz extends StatelessWidget {
  final List<Map<String,Object>> questions;
  final Function answerQuestion;
  final int questionIndex;
  Quiz(this.answerQuestion,this.questions,this.questionIndex);
  @override
  Widget build(BuildContext context) {
    return Column(
          children: <Widget>[
            Question('${questions[questionIndex]['questionText']}'),
            ...(questions[questionIndex]['answers'] as List<Map<String,Object>>).map((e) {
              return Answer(() => answerQuestion(e['score']), e['text']);
            }).toList(),
          ],
        );
  }
}