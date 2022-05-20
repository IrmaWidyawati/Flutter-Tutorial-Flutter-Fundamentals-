import 'package:flutter/material.dart';
import 'package:flutter_59_flutter_bloc/bloc/counter_bloc.dart';
import 'package:flutter_59_flutter_bloc/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main()=> runApp(MyApp()); 

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: //key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<CounterBloc>(
        create: (BuildContext context) => CounterBloc(),
        child: MainPage()),
    );
  }
}

