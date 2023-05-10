part of 'counter_bloc.dart';

@immutable
abstract class CounterState {}

class CounterInitial extends CounterState {}

class CounterAdd extends CounterState {
  final int number;

  CounterAdd(this.number);

  List<Object> get props => [number];
}
