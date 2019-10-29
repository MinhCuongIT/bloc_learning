import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';

abstract class CouterblocEvent extends Equatable {
  const CouterblocEvent();
}

class AddEvent extends CouterblocEvent {
  final int currentCouter;
  const AddEvent({@required this.currentCouter});

  @override
  List<Object> get props => [currentCouter];
}

class AbtractEvent extends CouterblocEvent {
  final int currentCouter;
  const AbtractEvent({@required this.currentCouter});

  @override
  List<Object> get props => [currentCouter];
}
