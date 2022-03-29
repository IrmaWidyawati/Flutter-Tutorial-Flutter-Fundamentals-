import 'package:flutter/material.dart';
import 'package:flutter_36_demo_api_post_method/post_result_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  //PostResult postResult = null;
  PostResult postResult =
      PostResult(id: 'ID', name: 'Name', job: 'Job', created: 'Created Date');

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
            Text((postResult != null)
                ? postResult.id +
                    " | " +
                    postResult.name +
                    " | " +
                    postResult.job +
                    " | " +
                    postResult.created
                : "Tidak ada data",
                style:TextStyle(fontSize :30, fontWeight: FontWeight.w600) ),
            ElevatedButton(
              onPressed: () {
                PostResult.connectToAPI("Minki", "Chef").then((value) {
                  postResult = value;
                  setState(() {});
                });
              },
              child: Text("POST"),
            ),
          ],
        )),
      ),
    );
  }
}
