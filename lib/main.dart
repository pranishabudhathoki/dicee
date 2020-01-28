import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MainPage());

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dicee",
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dicee"),
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int firstDiceNumber = 1;
  int secondDiceNumber = 1;
  void randomDice() {
    setState(() {
      firstDiceNumber = Random().nextInt(6) + 1;
      secondDiceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    randomDice();
                  },
                  padding: EdgeInsets.only(left: 10),
                  child: Image.asset("images/dice$firstDiceNumber.png"))),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: FlatButton(
                  onPressed: () {
                    randomDice();
                  },
                  padding: EdgeInsets.only(right: 10),
                  child: Image.asset("images/dice$secondDiceNumber.png"))),
        ],
      ),
    );
  }
}
