import 'package:flutter/material.dart';
import 'package:flutter_37_demo_api_get_method/user_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  //User user = null;
  User user = User(id: 'ID', name: 'Name');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("API Demo"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
              Text((User != null)
                ? user.id +
                    " | " +
                    user.name 
                : "Tidak ada data", 
                style:TextStyle(fontSize: 30, fontWeight: FontWeight.w600)),

            ElevatedButton(
              onPressed: () {
                User.connectToAPI("3").then((value) {
                  user = value;
                  setState(() {});
                });
              },
              child: Text("GET"),
            ),
          ],
        )),
      ),
    );
  }
}
