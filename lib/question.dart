import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String questionString;

  Question(this.questionString);

  @override
  Widget build(BuildContext context) {
    print(questionString);
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10), // 10 device pixels, 4 sides
      child: Text(
        questionString,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
