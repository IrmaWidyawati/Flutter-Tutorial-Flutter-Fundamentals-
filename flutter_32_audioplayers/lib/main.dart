import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late AudioPlayer audioPlayer;
  String durasi ="00:00:00";

_MyAppState(){
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
     });
     audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.seek(Duration(seconds: 30));
    await audioPlayer.play(url);
  }

  void pauseSound() async
  {
    await audioPlayer.pause();
  }

  void stopSound() async
  {
    await audioPlayer.stop();
  }

  void resumeSound() async
  {
    audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Playing Audio"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  playSound("https://www.pakdenono.com/download/firanda-andirja/Dahsyatnya-Fitnah-Wanita.mp3");
                },
                child: Text("Play"),
              ),
              ElevatedButton(
                onPressed: () {pauseSound();},
                child: Text("Pause"),
              ),
              ElevatedButton(
                onPressed: () {stopSound();},
                child: Text("Stop"),
              ),
              ElevatedButton(
                onPressed: () {resumeSound();},
                child: Text("Resume"),
              ),
              Text(durasi, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            ],
          ),
        ),
      ),
    );
  }
}
