import 'package:flutter/material.dart';
import 'package:flutter_61_mobx/mobx/counter.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
final CounterMobx counter = CounterMobx();

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
} 


class MainPage extends StatelessWidget {
  //const MainPage({ Key? key }) : super(key: //key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MOBX State Management Demo'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Observer(builder: (BuildContext context) => Text(counter.value.toString(), style:TextStyle(fontSize: 80)),
            ),
            SizedBox(height:40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: (){
                    counter.decrement();
                  }, 
                  child: Icon(Icons.arrow_downward_outlined)),
                SizedBox(width: 20,),
                FloatingActionButton(
                  onPressed: (){
                    counter.increment();
                    },
                  child: Icon(Icons.arrow_upward_outlined)),
              ],
            )
          ],
        ),)
    );
  }
}