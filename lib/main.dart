import 'package:fcc/result.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import './quiz.dart'; // relative path

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
  var _totalScore = 0;
  final _questions = const [
    {
      'questionText': "What is your favourite colour?",
      'answers': [
        {'text': 'Black', 'score': 5},
        {'text': 'Red', 'score': 7},
        {'text': 'Green', 'score': 9},
        {'text': 'White', 'score': 10}
      ],
    },
    {
      'questionText': "What's your favourite animal?",
      'answers': [
        {'text': 'Cat', 'score': 10},
        {'text': 'Dog', 'score': 7},
        {'text': 'Rat', 'score': 5},
        {'text': 'Frog', 'score': 4}
      ],
    },
    {
      'questionText': "Who is your favourite person?",
      'answers': [
        {'text': 'Lady Diana', 'score': 9},
        {'text': 'Churchill', 'score': 7},
        {'text': 'Thatcher', 'score': 10},
        {'text': 'Mosley', 'score': 4}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    print(_totalScore);

    if (_questionIndex < _questions.length) {
      print(null.hashCode);
    }
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  void resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text('Questionary'),
            ),
            body: _questionIndex < _questions.length
                ? Quiz(
                    questions: _questions,
                    answerQuestion: _answerQuestion,
                    questionIndex: _questionIndex)
                : Result(
                    resultScore: _totalScore,
                    resetQuiz: resetQuiz,
                  )));
  }
}
