import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 200),
                child: InkWell(
                  child: Image.asset("assets/image/MUHAN.png", height: MediaQuery.of(context).size.width*0.3,),
                  onTap: () {
                    final player = AudioCache();
                    player.play('audio/muhan~~.mp3');
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 100,),
                child: InkWell(
                    child: Image.asset("assets/image/MUYAHO.png", height: MediaQuery.of(context).size.width*0.6,),
                  onTap: () {
                    final player = AudioCache();
                    player.play('audio/muya~ho.mp3');
                  },
                ),
              ),
            ],
        ),
      ),
    );
  }
}
