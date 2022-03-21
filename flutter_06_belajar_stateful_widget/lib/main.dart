import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int i = 0;
  void tekanTombol() {
    setState(() {
      i = i + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Stateful Widget Demo"),
        ),
        body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(i.toString(),style: TextStyle(fontSize: 10 + i.toDouble()),),
            ElevatedButton(
              child: Text("Tambah Bilangan"),
              onPressed: tekanTombol,
            )
          ],
        )),
      ),
    );
  }
}
