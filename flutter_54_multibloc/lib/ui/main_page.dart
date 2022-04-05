import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_54_multibloc/bloc/color_bloc.dart';
import 'package:flutter_54_multibloc/bloc/counter_bloc.dart';
import 'package:flutter_54_multibloc/ui/second_page.dart';
import 'package:flutter_54_multibloc/ui/draft_page.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, number) => Text(
                number.toString(),
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SecondPage()));
              },
              child: Text(
                "Click to Change",
                style: TextStyle(color: Colors.white),
              ),
              color: color,
              shape: StadiumBorder(),
            )
          ],
        )),
      ),
    );
  }
}
