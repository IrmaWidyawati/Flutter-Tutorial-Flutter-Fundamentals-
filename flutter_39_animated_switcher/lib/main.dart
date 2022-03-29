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
  bool isON = false;
  Widget myWidget = Container(
                      width: 200, 
                      height: 100, 
                      decoration: BoxDecoration(
                                    color: Colors.pink.shade200, 
                                    border: Border.all(color: Colors.pink.shade400,
                                                         width: 3)
                                                ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text("Animated Switcher"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimatedSwitcher(
                  child: myWidget,
                  duration: Duration(seconds: 1),
                  transitionBuilder: (child, animation) => RotationTransition (turns: animation, child: child),
                  ),
                Switch(
                    activeColor : Colors.amber,
                    inactiveTrackColor: Colors.teal[500],
                    inactiveThumbColor:Colors.teal[500],
                    value: isON,
                    onChanged: (newValue) {
                      isON = newValue;
                      setState(() {
                        if (isON)
                         myWidget = Container(
                                      key: ValueKey(1),
                                      width: 200, 
                                      height: 100, 
                                      decoration: BoxDecoration(
                                                    color: Colors.cyan.shade200, 
                                                    border: Border.all(color: Colors.cyan.shade400,
                                                                        width: 3)
                                                                ),
                                    );
                        else
                         myWidget = Container(
                                      key: ValueKey(2),
                                      width: 200, 
                                      height: 100, 
                                      decoration: BoxDecoration(
                                                    color: Colors.pink.shade200, 
                                                    border: Border.all(color: Colors.pink.shade400,
                                                                        width: 3)
                                                                ),
                                    );
                      });
                    })
              ],
            ),
          )),
    );
  }
}
