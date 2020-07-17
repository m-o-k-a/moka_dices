import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

var random = new Random();
var dicesAmount = 0;

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
    dicesAmount = 2;
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if(dicesAmount == 0)
            Text("Select A Dice Amount To Start.",textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Colors.white)),
          if(dicesAmount >= 1)
            Expanded(child: Padding(padding: const EdgeInsets.all(20.0),
                child: Image.asset("assets/images/dice" + getRandomValue() + ".png"),),),

          if(dicesAmount >= 2)
          Expanded(child: Padding(padding: const EdgeInsets.all(20.0),
              child: Image.asset("assets/images/dice"+getRandomValue()+".png"),),),
          
        ],
      ),
    );
  }
}

String getRandomValue() => (1+random.nextInt(6)).toString();
