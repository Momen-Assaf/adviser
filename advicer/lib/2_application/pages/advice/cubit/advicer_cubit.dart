import 'package:advicer/1_domain/entities/advice_entity.dart';
import 'package:advicer/1_domain/usecases/advice_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'advicer_state.dart';

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
    final AdviceEntity advice = await adviceUseCases.getAdvice();
    debugPrint("got advice");

    emit(AdvicerLoadedState(advice: advice.advice));
    // emit(AdvicerErrorState(message: "ERRRORRRRR"));
  }
}
