import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'advicer_event.dart';
part 'advicer_state.dart';

class AdvicerBloc extends Bloc<AdvicerEvent, AdvicerState> {
  AdvicerBloc() : super(AdvicerInitial()) {
    on<AdvicerEvent>((event, emit) async {
      emit(AdvicerLoadingState());

      //execute business logic
      //for example get advice
      debugPrint("fake get advice triggered");
      await Future.delayed(Duration(seconds: 3), () {});
      debugPrint("got advice");

      emit(AdvicerLoadedState(advice: 'fake advice to test BLOC'));
      // emit(AdvicerErrorState(message: "ERRRORRRRR"));
    });
  }
}
