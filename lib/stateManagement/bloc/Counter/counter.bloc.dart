// ACTION ou EVENT
import 'dart:developer';

import 'package:bloc/bloc.dart';

abstract class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

// STATES

abstract class CounterState {
  final int counter;

  CounterState({required this.counter});
}

class CounterSuccessState extends CounterState {
  CounterSuccessState({required super.counter});
}

class CounterErrorState extends CounterState {
  final String errorMessage;
  CounterErrorState({required this.errorMessage, required super.counter});
}

// Un ETat initiall

class CounterIntialState extends CounterState {
  CounterIntialState() : super(counter: 0);
}

// BLOC

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterIntialState()) {
    // INCREMENT COUNTEER EVENT
    on<IncrementCounterEvent>((event, emit) {
      if (state.counter < 10) {
        emit(CounterSuccessState(counter: state.counter + 1));
      } else {
        emit(CounterErrorState(errorMessage: "Max 10", counter: state.counter));
      }
    });
//  DECREMENT COUNTER EVENT
    on<DecrementCounterEvent>((event, emit) {
      if (state.counter > 0) {
        emit(CounterSuccessState(counter: state.counter - 1));
      } else {
        emit(CounterErrorState(errorMessage: "Min 0", counter: state.counter));
      }
    });
  }
}
