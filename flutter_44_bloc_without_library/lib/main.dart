import 'package:flutter/material.dart';
import 'color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ColorBloc bloc = ColorBloc();
  @override
  void dispose(){
    bloc.dispose;
    super.dispose();
  }

  Widget build(BuildContext context) {
     
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(onPressed: (){
              bloc.eventSink.add(ColorEvent.to_pink);
            },
            backgroundColor: Colors.pink.shade300,),
            SizedBox(width: 10,),
            FloatingActionButton(onPressed: (){
              bloc.eventSink.add(ColorEvent.to_blue);
            }, 
            backgroundColor: Colors.blue.shade300,),
          ],
        ),
        appBar: AppBar(title: Text("BLoC without Library"),),
      body: Center(
        child: StreamBuilder<Color>(
          stream: bloc.stateStream,
          initialData: Colors.pink.shade300,
          builder: (context, snapshot) {
            return AnimatedContainer(
                  duration: Duration(milliseconds: 500),
                  width: 100,
                  height: 100,
                  color: snapshot.data,
                  );
        },
        ),
        ),
      ),
      );
  }
}