import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;
  Answer(this.selectHandler ,this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(20.0,5.0,20.0,5.0),
      width: double.infinity,
      child: RaisedButton(onPressed: selectHandler, child: Text(answerText),color: Colors.blue,),
    );
  }
}