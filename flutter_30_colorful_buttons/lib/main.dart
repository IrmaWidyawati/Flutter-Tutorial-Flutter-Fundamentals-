import 'package:flutter/material.dart';
import 'colorful_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
          appBar: AppBar(
        title: Text("Colorful Buttons"),
      ),
      body: Center(
        child: Row (
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ColorfulButtons(Colors.pink.shade300, Colors.blue.shade300, Icons.train),
              ColorfulButtons(Colors.amber.shade300, Colors.green.shade300, Icons.moped),
              ColorfulButtons(Colors.purple.shade300, Colors.brown.shade300, Icons.flight),
              ColorfulButtons(Colors.blue.shade300, Colors.teal.shade300, Icons.sailing_outlined),
            ],
        )
      ),
      
      ),
    );
  }
}
