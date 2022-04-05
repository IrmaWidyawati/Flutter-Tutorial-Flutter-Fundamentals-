import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

enum ColorEvent { to_pink, to_green }

class ColorBloc extends HydratedBloc<ColorEvent, Color> {
  ColorBloc() : super(Colors.pink.shade200);

  @override
  Stream<Color> mapEventToState(ColorEvent colorEvent) async* {
    switch (colorEvent) {
      case ColorEvent.to_pink:
        yield Colors.pink.shade200;
        break;
      case ColorEvent.to_green:
        yield Colors.green.shade200;
        break;
    }
  }

  @override
  Color fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    try {
      return Color(json['color'] as int);
    } catch (_) {
      throw UnimplementedError();
    }
  }

  @override
  Map<String, int> toJson(Color state) {
    // TODO: implement toJson
    try {
      return {'color': state.value};
    } catch (_) {
      throw UnimplementedError();
    }
  }
}
