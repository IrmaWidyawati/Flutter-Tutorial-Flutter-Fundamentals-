import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TabBar myTabBar = TabBar(
      indicator: BoxDecoration(
          color: Colors.teal[300],
          border: Border(bottom: BorderSide(color: Colors.white))),
      tabs: [
        Tab(
            icon: Icon(
              Icons.menu_book,
              color: Colors.white,
            ),
            text: "Surah"),
        Tab(
            icon: Icon(
              Icons.book_outlined,
              color: Colors.white,
            ),
            text: "Juz"),
        Tab(
            icon: Icon(
              Icons.bookmarks_outlined,
              color: Colors.white,
            ),
            text: "Bookmark"),
      ],
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            //leadingWidth: 80,
            leading: Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/quran.png",
                    fit: BoxFit.cover, height: 20, width: 20)),
            backgroundColor: Colors.teal[800],
            title: Text("Al-Qur'an Indonesia"),
            actions: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.low_priority_outlined)),
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.more_vert_outlined)),
            ],
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabBar.preferredSize.height),
                child: Container(color: Colors.teal[600], child: myTabBar)),
          ),
          body: TabBarView(children: [
            Center(
              child: Text("Tab 1, nantinya akan berisi 114 Surah"),
            ),
            Center(
              child: Text("Tab 2, nantinya akan berisi 30 juz"),
            ),
            Center(
              child: Text("Tab 3, nantinya berisi bookmatk"),
            )
          ]),
        ),
      ),
    );
  }
}
