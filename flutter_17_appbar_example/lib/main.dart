import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  Color color1 = Colors.white;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.adb,
            color: color1,
          ),
          title: Text(
            "AppBar Example",
            style: TextStyle(
                color: color1, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings),
              color: color1,
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(Icons.exit_to_app),
                color: color1),
          ],
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.blue.shade800,
                    Colors.blue.shade200
                  ], //[Color(0xff0096ff), Color(0xff6610f2)],
                  begin: FractionalOffset.topLeft,
                  end: FractionalOffset.bottomRight),
              image: DecorationImage(
                  image: AssetImage("assets/water.png"),
                  fit: BoxFit.cover,
                  repeat: ImageRepeat.repeat
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
