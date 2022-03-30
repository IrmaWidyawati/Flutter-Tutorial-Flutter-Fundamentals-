import 'package:flutter_42_provider_state_management/application_color.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'application_color.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: ChangeNotifierProvider<ApplicationColor>(
      // builder: (context) => ApplicationColor(),
        home: ChangeNotifierProvider(create: (BuildContext context) => ApplicationColor(),
          child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black38,
            title: Consumer<ApplicationColor>(
              builder:(context, ApplicationColor, _)=> Text("Provider State Management",
                  style: TextStyle(color:ApplicationColor.color)),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<ApplicationColor>(
                  builder: (context, ApplicationColor, _ ) =>  AnimatedContainer(
                    margin: EdgeInsets.all(5),
                    width: 100,
                    height: 100,
                    color: ApplicationColor.color,
                    duration: Duration(milliseconds: 500)
                    ),
                ),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Container(margin: EdgeInsets.all(5),child: Text("AB"),),
                     Consumer<ApplicationColor>(
                       builder: (context, ApplicationColor, _) => Switch(value: ApplicationColor.isLightBlue, onChanged: (newValue){ApplicationColor.isLightBlue = newValue;}, )),
                     Container(margin: EdgeInsets.all(5),child: Text("LB"),)
                   ],
                 ), 
              ],
            ),
          )
        ),
      ),
    );
  }
}
