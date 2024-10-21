part of 'advicer_bloc.dart';

@immutable
sealed class AdvicerState {}

final class AdvicerInitial extends AdvicerState {}

final class AdvicerLoadingState extends AdvicerState {}

final class AdvicerLoadedState extends AdvicerState {
  final String advice;
  AdvicerLoadedState({required this.advice});
}

final class AdvicerErrorState extends AdvicerState {
  final String message;
  AdvicerErrorState({required this.message});
}
