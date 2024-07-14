import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  int diceNumber1 = 1;
  int diceNumber2 = 1;
  int diceNumber3 = 1;
  int diceNumber4 = 1;
  int sum1 = 0, sum2 = 0, sum3 = 0, sum4 = 0;
  int c1 = 0, c2 = 0, c3 = 0, c4 = 0;

  void rollDice1() {
    setState(() {
      if (c1 < 10) {
        diceNumber1 = Random().nextInt(6) + 1;
        sum1 += diceNumber1;
        c1++;
      }
    });
  }

  void rollDice2() {
    setState(() {
      if (c2 < 10) {
        diceNumber2 = Random().nextInt(6) + 1;
        sum2 += diceNumber2;
        c2++;
      }
    });
  }

  void rollDice3() {
    setState(() {
      if (c3 < 10) {
        diceNumber3 = Random().nextInt(6) + 1;
        sum3 += diceNumber3;
        c3++;
      }
    });
  }

  void rollDice4() {
    setState(() {
      if (c4 < 10) {
        diceNumber4 = Random().nextInt(6) + 1;
        sum4 += diceNumber4;
        c4++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  rollDice1();
                },
                child: Image.asset(
                  'images/d$diceNumber1.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  rollDice2();
                },
                child: Image.asset(
                  'images/d$diceNumber2.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Text(
                'Total =$sum1 , clicks =$c1',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
                child: Text(
              'Total =$sum2 , clicks =$c2',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  rollDice3();
                },
                child: Image.asset(
                  'images/d$diceNumber3.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  rollDice4();
                },
                child: Image.asset(
                  'images/d$diceNumber4.jpg',
                  height: 150,
                  width: 150,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 30),
        Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
              'Total =$sum3 , clicks =$c3',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
            Expanded(
                child: Text(
              'Total =$sum4 , clicks =$c4',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ],
    );
  }
}
