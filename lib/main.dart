import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Ask me Anything'),
      ),
      body: MagicBallPage(),
    ),
  ));
}

class MagicBallPage extends StatefulWidget {
  @override
  _MagicBallPageState createState() => _MagicBallPageState();
}

class _MagicBallPageState extends State<MagicBallPage> {
  int changeBall = 1;

  void randomizeBall() {
    setState(() {
      changeBall = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: FlatButton(
                onPressed: () {
                  randomizeBall();
                },
                child: Image.asset('images/ball$changeBall.png'),
              ))
        ],
      ),
    );
  }
}
