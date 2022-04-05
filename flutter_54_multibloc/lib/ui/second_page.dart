import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_54_multibloc/bloc/color_bloc.dart';
import 'package:flutter_54_multibloc/bloc/counter_bloc.dart';
import 'package:flutter_54_multibloc/ui/draft_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc colorBloc = BlocProvider.of<ColorBloc>(context);
    CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return BlocBuilder<ColorBloc, Color>(
      builder: (context, color) => DraftPage(
        backgroundColor: color,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, int>(
              builder: (context, number) => GestureDetector(
                onTap: () {
                  counterBloc.add(number + 1);
                },
                child: Text(
                  number.toString(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: () {
                    colorBloc.add(ColorEvent.toblue);
                  },
                  color: Colors.blue,
                  shape: (color == Colors.blue)
                      ? CircleBorder(
                          side: BorderSide(color: Colors.black, width: 3))
                      : CircleBorder(),
                ),
                RaisedButton(
                  onPressed: () {
                    colorBloc.add(ColorEvent.toAmber);
                  },
                  color: Colors.amber,
                  shape: (color == Colors.amber)
                      ? CircleBorder(
                          side: BorderSide(color: Colors.black, width: 3))
                      : CircleBorder(),
                ),
                RaisedButton(
                  onPressed: () {
                    colorBloc.add(ColorEvent.toteal);
                  },
                  color: Colors.teal,
                  shape: (color == Colors.teal)
                      ? CircleBorder(
                          side: BorderSide(color: Colors.black, width: 3))
                      : CircleBorder(),
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}