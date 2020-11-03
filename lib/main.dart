import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blue.shade800,
            title: Text(
              'Ask me Anything'
            ),
          ),
          body: MagicBall(),
        ),
      ),
    );

class MagicBall extends StatefulWidget {
  @override
  _MagicBallState createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int magicNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: FlatButton(
          onPressed: (){
            changeRandomMagicBall();
          },
          child: Image.asset('images/ball$magicNumber.png'),
        ),
      ),
    );
  }

  void changeRandomMagicBall() {
    setState(() {
      magicNumber = Random().nextInt(5) + 1;
    });
  }
}

