import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan Image"),
        ),
        body: Center(
          child: Container(
            color: Colors.black,
            width: 450,
            height: 300,
            padding: EdgeInsets.all(3),
            child: Image(
              image: AssetImage(
                "images/OBS.jpg"
              ),
              fit: BoxFit.contain,
              //repeat: ImageRepeat.repeat,
            ),
          ),
        ),
      ),
    );
  }
}
