import 'dart:ui';
import 'dart:async';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_51_hydrated_bloc/color_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:flutter/foundation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
    ? HydratedStorage.webStorageDirectory
    : await getTemporaryDirectory(),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: BlocProvider<ColorBloc>(
          create: (_) => ColorBloc(), child: MainPage()),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.pink.shade200,
            onPressed: () {
              context.read<ColorBloc>().add(ColorEvent.to_pink);
            },
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            backgroundColor: Colors.green.shade200,
            onPressed: () {
              context.read<ColorBloc>().add(ColorEvent.to_green);
            },
          ),
        ],
      ),
      appBar: AppBar(
        backgroundColor: Colors.purple.shade300,
        title: Text(
          'BLoC with HydratedBLoC',
        ),
      ),

      // Provider state management is a way to manage the state of a widget tree
      // in a way that is easy to understand and maintain.
      body: Center(
          child: BlocBuilder<ColorBloc, Color>(
        builder: (context, currentColor) => AnimatedContainer(
            duration: Duration(milliseconds: 500),
            width: 100,
            height: 100,
            color: currentColor),
      )),
    );
  }
}
