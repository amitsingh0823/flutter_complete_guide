import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Question extends StatelessWidget {
  //const Question({ Key? key }) : super(key: key);
  String questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        questionText, //dynamic string declaration
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
