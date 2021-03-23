import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dicee',
            style: TextStyle(fontSize: 50, fontFamily: 'Chango'),
          ),
          backgroundColor: Colors.black,
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
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  randomDiceGenerator() {
    Random random = new Random();
    leftDiceNumber = random.nextInt(6) + 1;
    rightDiceNumber = random.nextInt(6) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        flex: 4,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: FlatButton(
                child: Image.asset('images/dice$leftDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    randomDiceGenerator();
                  });
                },
              ),
            ),
            Expanded(
              flex: 1,
              child: FlatButton(
                child: Image.asset('images/dice$rightDiceNumber.png'),
                onPressed: () {
                  setState(() {
                    randomDiceGenerator();
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
