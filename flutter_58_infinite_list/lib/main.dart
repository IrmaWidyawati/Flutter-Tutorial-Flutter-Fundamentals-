import 'package:flutter/material.dart';
import 'package:flutter_58_infinite_list/bloc/post_bloc.dart';
import 'package:flutter_58_infinite_list/main_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  //const MyApp({ Key? key }) : super(key: //key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<PostBloc>(
        create: (BuildContext context) => PostBloc()..add(PostEvent()),
                child: MainPage()),
    );
  }
}
