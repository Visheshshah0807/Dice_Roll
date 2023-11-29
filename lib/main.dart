import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Dicee Roll',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 35,
                fontFamily: 'SourceSans',
                letterSpacing: 5,
              ),
            ),
          ),
          backgroundColor: Colors.teal.shade900,
        ),
        body: Column(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.only(top: 150),
              child: Text(
                "Let's Play",
                style: TextStyle(
                  fontSize: 70,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico',
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: dice_roll(),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

class dice_roll extends StatefulWidget {
  const dice_roll({super.key});

  @override
  State<dice_roll> createState() => _dice_rollState();
}

class _dice_rollState extends State<dice_roll> {
  int leftDiceNumber = 1;
  int rightDiceNUmber = 6;

  void roll_dice_left() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
    });
  }

  void roll_dice_right() {
    setState(() {
      rightDiceNUmber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Player 1',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                TextButton(
                  onPressed: () {
                    roll_dice_left();
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Player 2',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                TextButton(
                  onPressed: () {
                    roll_dice_right();
                  },
                  child: Image.asset('images/dice$rightDiceNUmber.png'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
