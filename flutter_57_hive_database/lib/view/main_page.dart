import 'package:flutter/material.dart';
import 'package:flutter_57_hive_database/model/monster.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:hive_flutter/hive_flutter.dart';

class MainPage extends StatelessWidget {
  //const MainPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hive Database Demo'),
      ),
      body: FutureBuilder(
        future: Hive.openBox('monsters'),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasError)
              return Center(
                child: Text(snapshot.error),
              );
            else {
              var monstersBox = Hive.box('monsters');
              if (monstersBox.length == 0) {
                monstersBox.add(Monster(name: 'Dracula', level: 1));
                monstersBox.add(Monster(name: 'Frankenstein', level: 5));
                monstersBox.add(Monster(name: 'Mummy', level: 3));
              }
              return WatchBoxBuilder(
                box: monstersBox,
                builder: (context, monsters) => Container(
                  margin: EdgeInsets.all(20),
                  child: ListView.builder(
                    itemCount: monsters.length,
                    itemBuilder: (context, index) {
                      Monster monster = monsters.getAt(index);
                      return Container(
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(bottom: 10),
                          decoration:
                              BoxDecoration(color: Colors.white, boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.5),
                                offset: Offset(3, 3),
                                blurRadius: 6)
                          ]),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(monster.name +
                                  "[" +
                                  monster.level.toString() +
                                  "]"),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {
                                      monsters.putAt(
                                          index,
                                          Monster(
                                              name: monster.name,
                                              level: monster.level + 1));
                                    },
                                    icon: Icon(Icons.trending_up),
                                    color: Colors.teal,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      monsters.add(Monster(
                                          name: monster.name,
                                          level: monster.level));
                                    },
                                    icon: Icon(Icons.content_copy),
                                    color: Colors.amber,
                                  ),
                                  IconButton(
                                    onPressed: () {
                                      monsters.deleteAt(index);
                                    },
                                    icon: Icon(Icons.delete),
                                    color: Colors.red.shade500,
                                  )
                                ],
                              )
                            ],
                          ));
                    },
                  ),
                ),
              );
            }
          } else
            return Center(
              child: CircularProgressIndicator(),
            );
        },
      ),
    );
  }
}
