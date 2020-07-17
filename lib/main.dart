import 'package:flutter/material.dart';
import 'dart:math';

var random = new Random();

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyan,
        appBar: AppBar(title: Center(child: Text('Moka Dices'),), backgroundColor: Colors.cyan,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      children: <Widget>[
        Expanded(
          child: Image(image: AssetImage("assets/images/dice"+getRandomValue()+".png"),),
        ),
        Expanded(
          child: Image(image: AssetImage("assets/images/dice"+getRandomValue()+".png"),),
        ),
      ],
    ),
    );
  }
}

String getRandomValue() => (1+random.nextInt(6)).toString();
