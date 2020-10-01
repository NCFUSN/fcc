import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result({@required this.resultScore});
  String get resultPhrase {
    var resultText = 'You did it!';
    if (resultScore >= 12) {
      resultText = 'You are a good person';
    } else {
      resultText = 'You are a bloody maniac';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
