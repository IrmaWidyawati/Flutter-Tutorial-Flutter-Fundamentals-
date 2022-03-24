import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Card Example"),
          backgroundColor: Colors.teal.shade600,
        ),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.teal.shade100, Colors.teal.shade500],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter),
              ),
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.7,
                child: Card(
                  elevation: 10,
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: 0.7,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(4),
                            image: DecorationImage(
                                image: AssetImage("assets/leaves.jpg"),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(4),
                              topRight: Radius.circular(4)),
                          image: DecorationImage(
                              image: AssetImage("assets/DragonBloodTree.jpg"),
                              fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            20,
                            50 + MediaQuery.of(context).size.height * 0.35,
                            20,
                            20),
                        child: Column(
                          children: [
                            Text(
                              "These unusual-looking trees only grow on Socotra Island, in Yemen Arabian Sea",
                              maxLines: 2,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.green.shade700,
                                fontSize: 18,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 20, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Posted on ",
                                    style: TextStyle(
                                        color: Colors.brown, fontSize: 16),
                                  ),
                                  Text(
                                    "June 24, 2021",
                                    style: TextStyle(
                                        color: Colors.green.shade700,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Row(children: [
                              Spacer(flex: 10,),
                              Icon(Icons.thumb_up_rounded, size: 18, color: Colors.brown.shade700,),
                              Spacer(flex: 1,),
                              Text("99", style: TextStyle(color: Colors.brown.shade700),),
                              Spacer(flex: 5,),
                              Icon(Icons.comment_outlined, size: 18, color: Colors.brown.shade700,),
                              Spacer(flex: 1,),
                              Text("888", style: TextStyle(color: Colors.brown.shade700),),
                              Spacer(flex: 10,),
                            ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
