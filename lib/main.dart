import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex++;
    });

    print(_questionIndex);
    // print('Answer chose!');
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var questions = [
      {
        'questionText': 'What\'s your favourite colour ?',
        'answers': ['black', 'red', 'green', 'white'],
      },
      {
        'questionText': 'What\'s your favourite animal ?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
      },
      {
        'questionText': 'Whos\'s your favourite instrutor ?',
        'answers': ['Max', 'Tomy', 'Sham', 'Rocky'],
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first app'),
        ),
        body: Column(
          children: [
            Question(
              questions[_questionIndex],
            ),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
