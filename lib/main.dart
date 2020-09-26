import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

// void main() {
//   runApp(AppCore());
// }

void main() => runApp(AppCore()); // shorter way to implement entry point

class AppCore extends StatelessWidget {
  void answerQuestion() {
    print('answering');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Some Title'),
          ),
          body: Column(
            children: [
              Text('The Question'),
              RaisedButton(child: Text('Answer 1'), onPressed: answerQuestion),
              RaisedButton(
                  child: Text('Answer 2'), onPressed: () => print('answering')),
              RaisedButton(
                  child: Text('Answer 3'),
                  onPressed: () {
                    print('answering');
                  })
            ],
          )),
    );
  }
}
