import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildkey(int n, Color color) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: color,
        ),
        onPressed: (){
          playSound(n);
        },
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
              buildkey(1, Colors.purple),
              buildkey(2, Colors.indigo),
              buildkey(3, Colors.blue),
              buildkey(4, Colors.green),
              buildkey(5, Colors.yellow),
              buildkey(6, Colors.orange),
              buildkey(7, Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}
