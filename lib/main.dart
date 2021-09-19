import 'package:flutter/material.dart';

import 'package:quiz_app/quiz.dart';
import 'package:quiz_app/result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final questions = [
    {
      'questionText': "What\'s your favourite color?",
      'answers': [{'text':'Red','score' : 10}, {'text':'Blue','score':5}, {'text':'Green','score':3}]
    },
    {
      'questionText': "What\'s your favourite animal?",
      'answers': [{'text':'Dog','score' : 10}, {'text':'Cat','score':5}, {'text':'Rabbit','score':3}]
    },
    {
      'questionText': "Who\'s your favourite instructor?",
      'answers': [{'text':'Ayush','score' : 10}, {'text':'Ayush','score':5}, {'text':'Ayush','score':3}]
    },
  ];
  var questionIndex = 0;
  int totalScore=0;
  void resetQuiz() {
    setState(() {
    totalScore =0;
    questionIndex=0;
    });
  }
  void answerQuestion(int score) {
    totalScore += score;
    setState(() {
      questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
          centerTitle: true,
          elevation: 0,
        ),
        body:(questionIndex < questions.length)? Quiz(answerQuestion,questions,questionIndex) : Result(totalScore,resetQuiz) 
      ),
    );
  }
}
