import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            title: Text('8 Ball life predectation'),
            backgroundColor: Colors.teal,
          ),
          body: eightBall(),
        ),
      ),
    );

class eightBall extends StatefulWidget {
  @override
  _eightBallState createState() => _eightBallState();
}

class _eightBallState extends State<eightBall> {
  int tartCard = 2;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(80),
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    tartCard = Random().nextInt(5) + 1;
                    print(' this is number $tartCard');
                  });
                },
                child: Image.asset('images/ball$tartCard.png'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
