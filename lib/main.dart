import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  void playSound(name) {
    final player = AudioCache();
    player.play(name);
  }
   buildky(color , number){
     return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound('note$number.wav');
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildky(Colors.red, 1),
            buildky(Colors.orange, 2),
            buildky(Colors.yellow, 3),
            buildky(Colors.green, 4),
            buildky(Colors.blue, 5),
            buildky(Colors.teal, 6),
            buildky(Colors.purple, 7)

          ],
        ),
      ),
    );
  }
}
