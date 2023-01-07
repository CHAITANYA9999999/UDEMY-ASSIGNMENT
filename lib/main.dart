import 'package:flutter/material.dart';
import './text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final text = ['text 1', 'text 2', 'text 3'];

  var _textIndex = 0;

  void buttonClick() {
    setState(() {
      _textIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _textIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "ASSIGNMENT 1!",
          ),
        ),
        body: Column(children: [
          Container(
              width: double.infinity,
              child: Column(
                children: [
                  Texts(text[_textIndex]),
                ],
              )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(),
            onPressed:
                (_textIndex == text.length - 1) ? _resetQuiz : buttonClick,
            child: Text('Press this button to change text'),
          )
        ]),
      ),
    );
  }
}
