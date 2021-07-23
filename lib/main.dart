import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void answerQuestion() {
    print('Answer chose!');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    @override
    Widget build(BuildContext context) {
      var question = [
        'What\'s your favourite colour ?',
        'What\'s your favourite colour ?',
      ];
    }

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:
                  answerQuestion, //function need to be pass without brackets
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
