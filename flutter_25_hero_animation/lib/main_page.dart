import 'package:flutter/material.dart';
import 'package:flutter_25_hero_animation/second_page.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("Latihan Animation Hero", style: TextStyle(color: Colors.white,),),
      ),
      body: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return SecondPage();
          }));
        },
        child: Hero(
          tag:'pp',
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Container(
              width: 100,
              height: 100,
              child: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/hero.jpg"),
                ),
            ),
          ),
        ),
      ),
    );
  }
}
