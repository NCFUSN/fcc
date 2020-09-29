import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './question.dart'; // relative path
import './answer.dart';

// void main() {
//   runApp(AppCore());
// }

void main() => runApp(AppCore()); // shorter way to implement entry point

class AppCore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State<AppCore> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite colour?",
      "What's your favourite animal?"
    ];

    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questionary'),
          ),
          body: Column(
            children: [
              Question(questions.elementAt(_questionIndex)),
              Answer(_answerQuestion),
              Answer(_answerQuestion),
              Answer(_answerQuestion)
            ],
          )),
    );
  }
}
