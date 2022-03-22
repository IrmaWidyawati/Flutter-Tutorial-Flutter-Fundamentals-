import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Aplikasi Hello World"),),
        body: Center(child: Container(
          color: Colors.lightBlue,
          width: 150,
          height:100,
          child: Text(
            "Saya sedang melatih kemampuan flutter saya.",
            style: TextStyle(
              color: Colors.white,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w700,
              fontSize:20
            ),
          ),
        )),
      ),
    );
}
  }