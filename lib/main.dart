import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      title: new Text(
        'Welcome In SplashScreen',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
      ),
      seconds: 8,
      navigateAfterSeconds: XylophoneApp(),
      image: new Image.asset('assets/loading.gif'),
      backgroundColor: Colors.black,
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 150.0,
      onClick: () => print("Flutter Egypt"),
      loaderColor: Colors.white,
    );
  }
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Piano',
          style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.teal,
      ),
      body: Column(
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
      ),
    );
  }
}
