import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class CouterblocState extends Equatable {}

class InitialCouterblocState extends CouterblocState {
  final int currentCouter;
  InitialCouterblocState({@required this.currentCouter});
  @override
  List<Object> get props => [currentCouter];
}

class AddState extends CouterblocState {
  final int currentCouter;
  AddState({@required this.currentCouter});
  @override
  List<Object> get props => [currentCouter];
}

class SubtractState extends CouterblocState {
  final int currentCouter;
  SubtractState({@required this.currentCouter});
  @override
  List<Object> get props => [currentCouter];
}
