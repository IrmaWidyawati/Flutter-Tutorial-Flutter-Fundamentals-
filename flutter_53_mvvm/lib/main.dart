import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_53_mvvm/bloc/user_bloc.dart';
import 'package:flutter_53_mvvm/ui/main_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider<UserBloc>(
            create: (context) => UserBloc(), 
                                 child: MainPage()
                                 )
                      );
  }
}
