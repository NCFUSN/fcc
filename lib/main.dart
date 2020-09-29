import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// void main() {
//   runApp(AppCore());
// }

void main() => runApp(AppCore()); // shorter way to implement entry point

class AppCore extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AppState();
  }
}

class AppState extends State<AppCore> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print(questionIndex);
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
            title: Text('Some Title'),
          ),
          body: Column(
            children: [
              Text(questions.elementAt(questionIndex)),
              RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
              RaisedButton(
                  child: Text('Answer 2'), onPressed: () => answerQuestion()),
              RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () {
                    answerQuestion();
                  })
            ],
          )),
    );
  }
}
