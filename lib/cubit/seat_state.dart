import 'package:equatable/equatable.dart';

sealed class SeatState extends Equatable {
  const SeatState();

  @override
  List<Object> get props => [];
}

final class SeatInitial extends SeatState {}
