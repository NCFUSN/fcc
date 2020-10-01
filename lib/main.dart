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
  final questions = const [
    {
      'questionText': "What is your favourite colour?",
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': ['Cat', 'Dog', 'Rat', 'Frog'],
    },
    {
      'questionText': "Who is your favourite person?",
      'answers': ['Lady Diana', 'Mosley', 'Churchill', 'Thatcher'],
    },
  ];

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Questionary'),
          ),
          body: Column(
            children: [
              Question(
                questions[_questionIndex]['questionText'],
              ),
              ...(questions[_questionIndex]['answers'] as List<String>)
                  .map((answer) {
                return Answer(_answerQuestion, answer);
              }).toList()
            ],
          )),
    );
  }
}
