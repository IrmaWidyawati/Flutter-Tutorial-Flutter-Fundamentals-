import 'package:flutter/material.dart';
import 'custom_progress_bar.dart';
import 'dart:async';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Custom Progress Bar"),
        ),
        body: Center(
          child: ChangeNotifierProvider<TimeState>(
            create: (context) => TimeState(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<TimeState>(
                    builder: (Context, timestate, _) => CustomProgressBar(
                          width: 200,
                          value: timestate.time,
                          totalValue: 15,
                        )),
                SizedBox(height: 10),
                Consumer<TimeState>(
                    builder: (context, timeState, _) => ElevatedButton(
                        onPressed: () {
                          Timer.periodic(Duration(seconds: 1), (timer) {
                            if (timeState.time == 0) timer.cancel();
                            else
                              timeState.time -= 1;
                          });
                        },
                        child: Text("Start")))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
