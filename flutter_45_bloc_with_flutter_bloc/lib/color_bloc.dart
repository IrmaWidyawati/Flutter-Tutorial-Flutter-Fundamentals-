import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent {to_amber, to_light_blue}

class ColorBloc extends Bloc<ColorEvent, Color>{
Color _color = Colors.amber;

  ColorBloc(Color initialState) : super(initialState);  
 // @override
  //Color get initalState => Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    _color = (event == ColorEvent.to_amber) ? Colors.amber : Colors.teal;
    yield _color;
  }
}