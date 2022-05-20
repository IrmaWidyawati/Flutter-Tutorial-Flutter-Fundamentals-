import 'package:flutter/material.dart';
import 'package:flutter_59_flutter_bloc/bloc/counter_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  //const MainPage({ Key? key }) : super//(key: key);

  @override
  Widget build(BuildContext context) {
    CounterBloc cbloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter BLoC'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.value.toString(),
                  style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
                );
              },
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: () {cbloc.add(Decrement());},
                  child: Icon(Icons.arrow_downward),
                ),
                SizedBox(
                  width: 40,
                ),
                FloatingActionButton(
                  onPressed: () {cbloc.add(Increment());},
                  child: Icon(Icons.arrow_upward),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}


