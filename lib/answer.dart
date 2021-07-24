import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function
      selectHandler; // selectHandler is nothing it is only a variable name containing Function datatype.

  Answer(this.selectHandler);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Answer 1'),
        onPressed: selectHandler, //function need to be pass without brackets
      ),
    );
  }
}
