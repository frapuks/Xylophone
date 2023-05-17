import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void playSound(int noteNumber) {
    final player = AudioPlayer();
    player.play(
      AssetSource('note$noteNumber.wav'),
    );
  }

  Expanded displayNote(Color color, int noteNumber) {
    return Expanded(
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(color),
        ),
        onPressed: () {
          playSound(noteNumber);
        },
        child: Container(),
      ),
    );
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Xylophone',
        home: Scaffold(
          backgroundColor: Colors.black,
          body: SafeArea(
              child: Column(
            children: [
              displayNote(Colors.red, 1),
              displayNote(Colors.orange, 2),
              displayNote(Colors.yellow, 3),
              displayNote(Colors.green, 4),
              displayNote(Colors.teal, 5),
              displayNote(Colors.blue, 6),
            ],
          )),
        ));
  }
}
