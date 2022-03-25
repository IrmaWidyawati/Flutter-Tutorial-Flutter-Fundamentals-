
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: QrImage(
            version: 6,
            backgroundColor: Colors.grey.shade100,
            foregroundColor: Colors.black,
            padding: EdgeInsets.all(30),
            size: 300,
            data:"https://www.youtube.com/channel/UC0s92eMIsyR9otmIiY4v8Ww",

          ),
        )
      ),
    );
  }
}


