import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'advicer_state.dart';

class AdvicerCubit extends Cubit<AdvicerCubitState> {
  AdvicerCubit() : super(AdvicerInitial());

  void adviceRequested() async {
    emit(AdvicerLoadingState());

    //execute business logic
    //for example get advice
    debugPrint("fake get advice triggered");
    await Future.delayed(const Duration(seconds: 3), () {});
    debugPrint("got advice");

    emit(const AdvicerLoadedState(advice: 'fake advice to test Cubit'));
    // emit(AdvicerErrorState(message: "ERRRORRRRR"));
  }
}
