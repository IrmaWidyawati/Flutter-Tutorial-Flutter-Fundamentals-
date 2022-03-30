import 'package:flutter/material.dart';
import 'package:flutter_45_bloc_with_flutter_bloc/color_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ColorBloc>(
          create: (BuildContext context) => ColorBloc(Colors.amber),
          child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              bloc.add(ColorEvent.to_amber);
            },
            backgroundColor: Colors.amber,
          ),
          SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              bloc.add(ColorEvent.to_light_blue);
            },
            backgroundColor: Colors.teal,
          )
        ],
      ),
      appBar: AppBar(
        title: Text("BLoC with Flutter BLoC"),
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, Color>(
          builder: (context, currentColor) => AnimatedContainer(
              width: 100,
              height: 100,
              color: currentColor,
              duration: Duration(milliseconds: 500)),
        ),
      ),
    );
  }
}
