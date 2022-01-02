import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int noteNum){
    final player = AudioCache();
    player.play('note$noteNum.wav');
  }

  Expanded buildKey({Color color, int soundNumber}){
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(soundNumber);
        },
        color: color,
      ),
    );
  }

  Widget emptySpace(){
    return SizedBox(
      height: 8.0,
      width: 150.0,
      child: Divider(
        color: Colors.grey[350],
        thickness: 0.5,
        indent: 40,
        endIndent: 40,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(40.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(color: Colors.red, soundNumber: 1),
                emptySpace(),
                buildKey(color: Colors.orange, soundNumber: 2),
                emptySpace(),
                buildKey(color: Colors.yellow, soundNumber: 3),
                emptySpace(),
                buildKey(color: Colors.green, soundNumber: 4),
                emptySpace(),
                buildKey(color: Colors.teal, soundNumber: 5),
                emptySpace(),
                buildKey(color: Colors.blue, soundNumber: 6),
                emptySpace(),
                buildKey(color: Colors.purple, soundNumber: 7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
