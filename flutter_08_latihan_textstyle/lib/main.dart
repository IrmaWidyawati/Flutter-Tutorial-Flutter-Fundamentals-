import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan TextStyle"),),
        body: Center(
          child: Text(
            "Ramadhan",
            style: TextStyle(
              fontFamily:"Monoton",
              fontStyle: FontStyle.italic,
              fontSize: 50,
              color: Colors.green ,
              decoration: TextDecoration.underline,
              decorationColor: Colors.lightGreen,
              decorationThickness: 5,
              decorationStyle: TextDecorationStyle.wavy,
            ),
          )
        ),
      ),
    );
  }
}
