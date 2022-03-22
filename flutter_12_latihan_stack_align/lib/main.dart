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
          title: Text("Latihan Stack dan Align"),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.blue.shade50,
                            )),
                      ],
                    )),
                Flexible(
                    flex: 1,
                    child: Row(
                      children: [
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.blue.shade50,
                            )),
                        Flexible(
                            flex: 1,
                            child: Container(
                              color: Colors.white,
                            )),
                      ],
                    ))
              ],
            ),
            ListView(children: [
              Column(children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Ini adalah text yang ada di lapisan tengah dari Stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Ini adalah text yang ada di lapisan tengah dari Stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Ini adalah text yang ada di lapisan tengah dari Stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Ini adalah text yang ada di lapisan tengah dari Stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Ini adalah text yang ada di lapisan tengah dari Stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Ini adalah text yang ada di lapisan tengah dari Stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Ini adalah text yang ada di lapisan tengah dari Stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Text(
                    "Ini adalah text yang ada di lapisan tengah dari Stack",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
              ])
            ]),
            Align(
                alignment: Alignment(0.9,0.9),
                child:
                    ElevatedButton(onPressed: () {}, child: Text("My Button"))),
          ],
        ),
      ),
    );
  }
}
