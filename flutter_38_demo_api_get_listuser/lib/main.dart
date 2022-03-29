import 'package:flutter/material.dart';
import 'package:flutter_38_demo_api_get_listuser/user_model.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String output = "No Data";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('API Demo'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(output,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w100)),
              ElevatedButton(
                onPressed: () {
                  User.getUsers("1").then((users) {
                    output = '';
                    for (var i = 0; i < users.length; i++) {
                      output += '[ ' + users[i].name + '] ';
                      setState(() {});
                    }
                  });
                },
                child: Text('GET'),
              )
            ],
          ),
        ),
      ),
    );
  }
}