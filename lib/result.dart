import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetQuiz;
  Result(this.resultScore,this.resetQuiz);
  String get resultPhare {
    var resultText = "You did it";
    if(resultScore <= 10){
      resultText = "You are awesome";
    } else {
      resultText =  "You are strange";
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(resultPhare,style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),textAlign: TextAlign.center,),
        FlatButton(onPressed: resetQuiz, child: Text("Restart the quiz"))
      ],
    ));
  }
}