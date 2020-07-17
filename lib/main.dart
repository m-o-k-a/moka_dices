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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if(dicesAmount == 0)
            Text("Select A Dice Amount To Start.",textAlign: TextAlign.center, style: TextStyle(fontSize: 24, color: Colors.white)),
          for(var i = dicesAmount; i>0; i-=2)
            Row(
              children: <Widget>[
                for(var j = i; (j>i-2 && j>0); j--)
                  Expanded(child: FlatButton(
                    padding: EdgeInsets.all(20.0),
                    child: Image.asset("assets/images/dice"+getRandomValue()+".png"),
                    onPressed: (){
                      setState(() {
                        //todo change only this child when pressed
                      });
                    },
                  ),),
              ],
            ),
          const SizedBox(height: 30),
          if(dicesAmount > 0)
          RaisedButton(
            color: Colors.cyan[600],
            onPressed: () {
              setState(() {});
            },
            child: Text('Rolls Dice(s)', style: TextStyle(fontSize: 24, color: Colors.white)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Ink(
                  decoration: ShapeDecoration(color: Colors.white, shape: CircleBorder(),),
                  child: IconButton(icon: Icon(Icons.filter_1), color: Colors.cyan, onPressed: () {
                    setState(() {dicesAmount = 1;});
                  },),
                ),
              ),
              Expanded(
                child: Ink(
                  decoration: ShapeDecoration(color: Colors.white, shape: CircleBorder(),),
                  child: IconButton(icon: Icon(Icons.filter_2), color: Colors.cyan, onPressed: () {
                    setState(() {dicesAmount = 2;});
                  },),
                ),
              ),
              Expanded(
                child: Ink(
                  decoration: ShapeDecoration(color: Colors.white, shape: CircleBorder(),),
                  child: IconButton(icon: Icon(Icons.filter_4), color: Colors.cyan, onPressed: () {
                    setState(() {dicesAmount = 4;});
                  },),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

String getRandomValue() => (1+random.nextInt(6)).toString();
