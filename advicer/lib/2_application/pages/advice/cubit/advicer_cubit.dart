import 'package:advicer/1_domain/failures/failures.dart';
import 'package:advicer/1_domain/usecases/advice_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'advicer_state.dart';

const generalFailureMessage = "Something went wrong";
const serverFailureMessage = "Server error";
const cacheFailureMessage = "Cache error";

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdvicerInitial());

  final AdviceUsecases adviceUseCases = AdviceUsecases();
  // could also use other usecases

  void adviceRequested() async {
    emit(AdvicerLoadingState());

    //execute business logic
    //for example get advice
    debugPrint("fake get advice triggered");
    // await Future.delayed(const Duration(seconds: 3), () {});
    final failureOrAdvice = await adviceUseCases.getAdvice();
    debugPrint("got advice");

    failureOrAdvice.fold(
      (failure) =>
          emit(AdvicerErrorState(message: _mapFailureToMessage(failure))),
      (advice) => emit(AdvicerLoadedState(advice: advice.advice)),
    );
  }

  String _mapFailureToMessage(Failures failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return serverFailureMessage;
      case CacheFailure:
        return cacheFailureMessage;
      default:
        return generalFailureMessage;
    }
  }
}
