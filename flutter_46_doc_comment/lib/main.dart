import 'package:flutter/material.dart';
import 'package:flutter_46_doc_comment/user_profile.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final UserProfile profile = UserProfile(
    name: "Paul Rudd",
    role: "AntMan",
    photoURL: "https://cdn.pixabay.com/photo/2020/03/30/01/41/toys-4982760_960_720.jpg",
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Doc Comment Example"),
          backgroundColor: Colors.red,
        ),
        body: Center(child: profile),
      ),
    );
  }
}
