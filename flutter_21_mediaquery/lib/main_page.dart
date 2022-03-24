import 'package:flutter/material.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text("Latihan Media Query"),
          ),
          body: 
          // Container(
          //   color: Colors.amber[300],
          //   width: MediaQuery.of(context).size.width/3,
          //   height: MediaQuery.of(context).size.height/3,
          // ),
          (MediaQuery.of(context).orientation == Orientation.portrait)
          ? Column(
            children: generateContainers(),
            )
          : Row(
            children: generateContainers(),
          ),
        ));
  }

  List<Widget> generateContainers() {
    return [
            Container(
              color: Colors.orange.shade100,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.orange.shade200,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.orange.shade300,
              width: 100,
              height: 100,
            ),
          ];
  }
} 
