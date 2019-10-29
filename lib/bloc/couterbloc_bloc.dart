import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class CouterblocBloc extends Bloc<CouterblocEvent, CouterblocState> {
  @override
  CouterblocState get initialState => InitialCouterblocState();

  @override
  Stream<CouterblocState> mapEventToState(
    CouterblocEvent event,
  ) async* {
    if (event is AddEvent) {
      yield AddState(currentCouter: event.currentCouter + 1);
    } else if (event is AbtractEvent) {
      yield SubtractState(currentCouter: event.currentCouter - 1);
    }
  }
}
