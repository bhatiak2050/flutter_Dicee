import 'package:flutter/material.dart';

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

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    int leftDieNo = 1;
    int rightDieNo = 5;

    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                onPressed: (){
                  print("Left button pressed");
                },
            child: Image.asset('images/dice$leftDieNo.png'),
          )),
          Expanded(
            child: FlatButton(
              onPressed: (){
                print("Right button pressed");
              },
              child: Image.asset('images/dice$rightDieNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
