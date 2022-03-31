import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<bool> isSelected = [true, false, false];
  ColorFilter colorFilter = ColorFilter.mode(Colors.blue, BlendMode.screen);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ColorFiltered(
        colorFilter: colorFilter,
        child: Scaffold(
          appBar: AppBar(
            title: Text("New Widgets Demo"),
          ),
          body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SelectableText(
                "ini adalah selectabletext",
                style: TextStyle(fontSize: 20),
                showCursor: true,
                cursorHeight: 3,
                cursorColor: Colors.blue,
              ),
              SizedBox(height: 10),
              ToggleButtons(
                  children: [
                    Icon(Icons.auto_stories_sharp, color: Colors.brown),
                    Icon(Icons.beach_access_sharp, color: Colors.blue),
                    Icon(Icons.favorite ,color: Colors.pink)
                  ],
                  isSelected: isSelected,
                  onPressed: (index) {
                    setState(() {
                      //bisa diselect semua
                      //isSelected[index] = !isSelected[index];
                      
                      //hanya bisa dipilih salah satu
                      if (index == 0)
                        colorFilter = ColorFilter.mode(Colors.blue.shade300, BlendMode.colorBurn);
                      else if (index == 1)
                        colorFilter = ColorFilter.mode(Colors.green.shade300, BlendMode.softLight);
                      else 
                       colorFilter = ColorFilter.mode(Colors.amber.shade50, BlendMode.multiply);
                      for (int i = 0; i< isSelected.length; i++)
                        isSelected[i] = (i == index) ? true : false;
                    });
                  },
                  fillColor: Colors.purple.shade100,
                  selectedBorderColor: Colors.purple,
                  //selectedColor: Colors.purple,
                  splashColor: Colors.yellow,
                  borderRadius: BorderRadius.circular(15),
                  ),
            ]),
          ),
        ),
      ),
    );
  }
}
