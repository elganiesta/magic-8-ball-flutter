import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.blue[700],
          appBar: AppBar(
            backgroundColor: Colors.blue[900],
            title: Text('Ask Me Any Thing'),
          ),
          body: Ball(),
        ),
      ),
    );

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  int ball_number = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            setState(() {
            ball_number = Random().nextInt(5) +1 ;
          });
          },
          child: Image.asset('images/ball$ball_number.png'),
        ),
      ),
    );
  }
}
