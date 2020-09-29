import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selecthandler;
  final String answertext;

  Answer(this.selecthandler, this.answertext);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: EdgeInsets.all(10), // 10 device pixels, 4 sides
        child: RaisedButton(
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(answertext),
          onPressed: selecthandler,
        ));
  }
}
