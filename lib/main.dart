//@dart=2.17
import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0E0C0C),
        appBar: AppBar(
          title: Text('Magic Eight Ball of Doom',
              style: TextStyle(color: Color(0xFF0CA9DD),
                  fontWeight: FontWeight.bold),),
          backgroundColor: Color(0xFF004D92),
        ),
        body: BallPage(),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballAnswer = 1;

  void changeAnswer(){
    setState(() {
      ballAnswer = Random().nextInt(5) + 1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding (
              padding: const EdgeInsets.all(16.0),
              child: TextButton (
                onPressed: () {
                  changeAnswer();
                },
                style: TextButton.styleFrom(
                  padding: EdgeInsets.zero,
                ),
                child: Image.asset('images/ball$ballAnswer.png'),
              )
            ) ,
          ),
        ],
      ),
    );
  }
}

