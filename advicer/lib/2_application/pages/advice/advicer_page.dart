import 'package:advicer/2_application/core/widgets/error_message.dart';
import 'package:advicer/2_application/pages/advice/bloc/advicer_bloc.dart';
import 'package:advicer/2_application/pages/advice/widgets/advice_field.dart';
import 'package:advicer/2_application/pages/advice/widgets/app_bar_widget.dart';
import 'package:advicer/2_application/pages/advice/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AdvicerPageWrapperProvider extends StatelessWidget {
  const AdvicerPageWrapperProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AdvicerBloc(),
      child: AdvicerPage(),
    );
  }
}

class AdvicerPage extends StatelessWidget {
  const AdvicerPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);
    return Scaffold(
        appBar: AppBarWidget(themeData: themeData),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              Expanded(
                child: Center(
                  child: BlocBuilder<AdvicerBloc, AdvicerState>(
                    builder: (context, state) {
                      if (state is AdvicerInitial) {
                        return Text(
                          "Your Advice is waiting for you",
                          style: themeData.textTheme.headlineLarge,
                        );
                      } else if (state is AdvicerLoadingState) {
                        return CircularProgressIndicator(
                          color: themeData.colorScheme.secondary,
                        );
                      } else if (state is AdvicerLoadedState) {
                        return AdviceField(
                          themeData: themeData,
                          advice: state.advice,
                        );
                      } else if (state is AdvicerErrorState) {
                        return ErrorMessage(
                            themeData: themeData, message: state.message);
                      } else {
                        return ErrorMessage(
                            themeData: themeData,
                            message:
                                "I dont know whats going on at this point - I GIVE UP");
                      }
                    },
                  ),
                ),
              ),
              SizedBox(
                  height: 200,
                  child: Center(child: CustomButton(themeData: themeData))),
            ],
          ),
        ));
  }
}
