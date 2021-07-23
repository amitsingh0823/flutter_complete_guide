import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  var questionIndex = 0;
  void answerQuestion() {
    questionIndex++;
    print(questionIndex);
    // print('Answer chose!');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite colour ?',
      'What\'s your favourite animal ?',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed:
                  answerQuestion, //function need to be pass without brackets
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () => print(
                  'Answer 2 chosen !'), // => is used for single expression
            ),
            RaisedButton(
                child: Text('Answer 3'),
                onPressed: () {
                  print('Answer 3 chosen !');
                }),
          ],
        ),
      ),
    );
  }
}
