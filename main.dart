import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask me anything')),
          backgroundColor: Colors.blue.shade900,
        ),
        body: Ballpage(),
      ),
    ),
  );
}

class Ballpage extends StatefulWidget {
  @override
  State<Ballpage> createState() => _BallpageState();
}

class _BallpageState extends State<Ballpage> {
  int magicballnumber = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: TextButton(
          onPressed: () {
            setState(() {
              magicballnumber = Random().nextInt(5) + 1;
            });
          },
          child: Image(
            image: AssetImage('images/ball$magicballnumber.png'),
          ),
        ),
      ),
    );
  }
}
