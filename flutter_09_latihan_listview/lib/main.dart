import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];
  int counter=1;

  // _MyAppState() {
  //   for (int i = 0; i < 15; i++)
  //     widgets.add(Text(
  //       "Data ke-" + i.toString(),
  //       style: TextStyle(fontSize: 35),
  //     ));
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Latihan ListView"),
        ),
        body: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(child: Text("Tambah Data"),onPressed: () {
                  setState(() {
                    widgets.add(Text("Data ke-"+ counter.toString(),style: TextStyle(fontSize: 30)));
                    counter++;
                  });
                }),
                ElevatedButton(child: Text("Hapus Data"),onPressed: (){
                  setState(() {
                    widgets.removeLast();
                    counter--;
                  });
                }),                
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widgets,
            ),
          ] 
          //widgets,
        ),
      ),
    );
  }
}
