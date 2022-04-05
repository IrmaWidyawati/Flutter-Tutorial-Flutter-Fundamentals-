import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';

enum ColorEvent { toblue, toAmber, toteal }

class ColorBloc extends Bloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.blue);

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    switch (event) {
      case ColorEvent.toblue:
        yield Colors.blue;
        break;
      case ColorEvent.toAmber:
        yield Colors.amber;
        break;
      case ColorEvent.toteal:
        yield Colors.teal;
        break;
    }
  }
}
