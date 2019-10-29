import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';

abstract class CouterblocState extends Equatable {}

class InitialCouterblocState extends CouterblocState {
  @override
  List<Object> get props => [];
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
