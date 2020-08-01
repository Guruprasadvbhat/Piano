import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/services.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(child: Text('Piano',
          style: TextStyle(fontSize: 25.0,fontWeight: FontWeight.bold),)),
          backgroundColor: Colors.red,
        ),
        body: XylophoneApp(),
      ),
    ));

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return  Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: FlatButton(
                color: Colors.black,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note1.wav');
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note2.wav');
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.black,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note3.wav');
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note4.wav');
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.black,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note5.wav');
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.white,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note6.wav');
                },
              ),
            ),
            Expanded(
              child: FlatButton(
                color: Colors.black,
                onPressed: () {
                  final player = AudioCache();
                  player.play('note7.wav');
                },
              ),
            ),
          ],
        );


  }
}
