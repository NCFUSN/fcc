import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(AppCore());
}

//void main() => AppCore(); // shorter way to implement entry point

class AppCore extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Some Title'),
        ),
        body: Text('Some other texts'),
      ),
    );
  }
}
