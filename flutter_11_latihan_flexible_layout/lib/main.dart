import 'package:flutter/material.dart';

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
          title: Text("Flexible Layout"),
        ),
        body: Column(
          children: [
            Flexible(
              child: Row(
                children: [
                   Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.green.shade200,
                  )),
                   Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.purple.shade200,
                  )),
                   Flexible(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.all(5),
                    color: Colors.orange.shade200,
                  )),
                ],
              ),
            ),
            Flexible(
                flex: 2,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.pink.shade200,
                )),
            Flexible(
                flex: 1,
                child: Container(
                  margin: EdgeInsets.all(5),
                  color: Colors.blue.shade200,
                ))
          ],
        ),
      ),
    );
  }
}
