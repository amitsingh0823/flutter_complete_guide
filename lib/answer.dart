import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function
      selectHandler; // selectHandler is nothing it is only a variable name containing Function datatype.
  final String answerText;
  Answer(this.selectHandler, this.answerText);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text(answerText),
        onPressed: selectHandler, //function need to be pass without brackets
      ),
    );
  }
}
