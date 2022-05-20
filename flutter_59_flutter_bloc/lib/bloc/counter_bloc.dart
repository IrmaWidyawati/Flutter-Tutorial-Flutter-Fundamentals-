import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterEvent>((event, emit) {
      if (event is Increment) {
        emit(CounterState(state.value + 1));
      } else if (event is Decrement) {
        emit(CounterState(state.value - 1));
      }
    });
  }
}
