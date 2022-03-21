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
          appBar: AppBar(title: Text("Latihan Row dan Column")),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Text 1"),
              Text("Text 2"),
              Text("Text 3"),
              Row(children: [
                    Text("Text 4"),
                    Text("Text 5"),
                    Text("Text 6")
                            ],
                  ),
                  ],
            ),
      ),
      );
  }
}
