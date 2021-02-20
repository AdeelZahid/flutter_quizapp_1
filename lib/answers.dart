import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  final Function selectHandler;
  final String btnText;

  const Answers({
    Key key,
    @required this.selectHandler,
    @required this.btnText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      width: double.infinity,
      child: RaisedButton(
          onPressed: selectHandler,
          child: Text(btnText),
          textColor: Colors.white,
          color: Colors.blue),
    );
  }
}
