part of 'advicer_cubit.dart';

@immutable
sealed class AdvicerCubitState {
  const AdvicerCubitState();

  List<Object?> get props => [];
}

final class AdvicerInitial extends AdvicerCubitState {}

final class AdvicerLoadingState extends AdvicerCubitState {}

final class AdvicerLoadedState extends AdvicerCubitState {
  final String advice;
  const AdvicerLoadedState({required this.advice});

  @override
  List<Object?> get props => [advice];
}

final class AdvicerErrorState extends AdvicerCubitState {
  final String message;
  const AdvicerErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}
