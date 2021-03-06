import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int noteNumber) {
    final player = AudioCache();
    player.play('note$noteNumber.wav');
  }

  Expanded buildKey({Color color,  int noteNumber}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          playSound(noteNumber);
        },
        color: color,
        child: Text(''),
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
            children: <Widget>[
              buildKey(color: Colors.red, noteNumber: 7),
              buildKey(color: Colors.orange, noteNumber: 6),
              buildKey(color: Colors.yellow, noteNumber: 5),
              buildKey(color: Colors.green, noteNumber: 4),
              buildKey(color: Colors.teal, noteNumber: 3),
              buildKey(color: Colors.blue, noteNumber: 2),
              buildKey(color: Colors.purple, noteNumber: 1),
            ],
          ),
        ),
      ),
    );
  }
}
