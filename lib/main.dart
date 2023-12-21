import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(NatureSounds());
}

class NatureSounds extends StatelessWidget {
  playNaureSounds(soundNumber){
    final player=AudioPlayer();
    player.play(AssetSource('note$soundNumber.mp3'));
  }
  Expanded buildButton({Color? color,int? soundNumber}){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: () {
          playNaureSounds(soundNumber);
        }, child: Text(''),

      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildButton(color:Colors.red,soundNumber:1),
              buildButton(color:Colors.orange,soundNumber:2),
              buildButton(color:Colors.yellow,soundNumber:3),
              buildButton(color:Colors.green,soundNumber:4),
              buildButton(color:Colors.blue,soundNumber:5),
              buildButton(color:Colors.teal,soundNumber:6),
              buildButton(color:Colors.purple,soundNumber:7),
            ],
          ),
        ),
      ),
    );
  }
}
