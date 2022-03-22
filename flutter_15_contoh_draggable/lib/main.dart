import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color color1 = Colors.pink.shade300;
  Color color2 = Colors.grey;
  Color color3 = Colors.pink.shade200;
  Color color4 = Colors.blue.shade300;
  
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Latihan Draggable")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Draggable<Color>(
                  data:color1,
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1,
                        shape: StadiumBorder(),
                        elevation: 3,
                      ),
                      ),
                  childWhenDragging:SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                      ),
                      ), 
                  feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color1.withOpacity(0.7),
                        shape: StadiumBorder(),
                      ),
                      ),    
                ),
                Draggable<Color>(
                  data:color4,
                  child: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color4,
                        shape: StadiumBorder(),
                        elevation: 3,
                      ),
                      ),
                  childWhenDragging:SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                      ),
                      ), 
                  feedback: SizedBox(
                      width: 50,
                      height: 50,
                      child: Material(
                        color: color4.withOpacity(0.7),
                        shape: StadiumBorder(),
                      ),
                      ),    
                ),
              ],
            ),
          DragTarget<Color>(
            onWillAccept: (value) => true,
            onAccept: (value) {isAccepted = true;color4 = value;},
            builder: (context, candidates, rejected) {
            return (isAccepted) ? SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: color4,
                        shape: StadiumBorder(),
                        elevation: 3,
                      ),
                      ):
                      SizedBox(
                      width: 100,
                      height: 100,
                      child: Material(
                        color: color2,
                        shape: StadiumBorder(),
                        elevation: 3,
                      ),
                      );
            },
          )
          ],
        ),
      ),
    );
  }
}
