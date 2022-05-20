import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  //const MainPage({ Key? key }) : supe//r(key: key);
  final int x = 10;
  List<int> myList = [1,2,3];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Extension Demo'),
      ),
      body: Center(
        child: Text(
          //'Bilangan:' & x.negate().toString(),
          'Bilangan:' &  myList.midElement.toString(),
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}

extension ListExtension<T> on List{
  T get midElement => (this.length == 0)? null : this [(this.length / 2).floor()];
}

extension NumberExtension<T extends num> on num {
  num negate() {
    var num = -1 * this;
    return num;
  }}

extension StringExtension on String{
  String operator & (String other) => this  + " " + other;
}

