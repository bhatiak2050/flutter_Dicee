import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDieNo = 1;
  int rightDieNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
            onPressed: () {
              setState(() {
                leftDieNo = Random().nextInt(6)+1;
              });
            },
            child: Image.asset('images/dice$leftDieNo.png'),
          )),
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  rightDieNo = Random().nextInt(6)+1;
                });
              },
              child: Image.asset('images/dice$rightDieNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
