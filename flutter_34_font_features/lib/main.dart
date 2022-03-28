import 'dart:ui';

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
          title: Text("Flutter Typhography"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text("Default"),
            Text(
              "Small Caps",
              style: TextStyle(
                  fontSize: 20, 
                  color: Colors.amber,
                  fontFeatures: [FontFeature.enable('smcp')]),
            ),
             Text(
              "frac 5 1/2",
              style: TextStyle(
                  fontSize: 20, 
                  color: Colors.red.shade200,fontFeatures: [FontFeature.enable('frac')]),
            ),
             Text(
              "Milonga Small Caps & frac 5 1/2",
              style: TextStyle(
                  fontSize: 20, 
                  color: Colors.blue.shade400,
                  fontFamily: "Milonga", fontFeatures: [FontFeature.enable('smcp'), FontFeature.enable('frac')]),
            ),
            Text(
              "Fuggles Oldstyle",
              style: TextStyle(
                  fontSize: 40, 
                  color: Colors.teal.shade300,
                  fontFamily: "Fuggles", 
                  fontWeight: FontWeight.w600, fontFeatures: [FontFeature.oldstyleFigures()]),
            ),
            Text(
              "Gabriola Stylistset 5",
              style: TextStyle(
                  fontSize: 30, 
                  color: Colors.green.shade300,
                  fontFamily: "Gabriola", fontWeight: FontWeight.bold, fontFeatures: [FontFeature.stylisticSet(5)]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text(
              "OrdinalForms ",
              style: TextStyle(
                  fontSize: 20, 
                  color: Colors.red.shade300,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Piazzola"),
                  ),
              Text(
              "1st, 2nd, 3rd, 4th",
              style: TextStyle(
                  fontSize: 20, 
                  color: Colors.red.shade300,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Piazzola",
                   fontFeatures: [FontFeature.ordinalForms()]),
            ),
              ],
            ),
            Text(
              "ScienticInferiors CH3COOH, Au(OH)3",
              style: TextStyle(
                  fontSize: 20, 
                  color: Colors.purple.shade300,
                  fontWeight: FontWeight.w700,
                  fontFamily: "Piazzola",
                   fontFeatures: [FontFeature.scientificInferiors()]),
            ),
            
          ],
        )),
      ),
    );
  }
}
