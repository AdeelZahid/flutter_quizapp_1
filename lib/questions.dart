import 'package:flutter/material.dart';

class Questions extends StatelessWidget {
  final String questionText;

  Questions(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      height: 50.0,
      color: Colors.blueAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Text(
          questionText,
          style: TextStyle(fontSize: 20, color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
