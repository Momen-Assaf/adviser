import 'package:advicer/2_application/pages/advice/bloc/advicer_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomButton extends StatelessWidget {
  final ThemeData themeData;
  const CustomButton({super.key, required this.themeData});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        debugPrint('Custom button pressed');
        BlocProvider.of<AdvicerBloc>(context).add(AdviceRequestedEvent());
      },
      child: Material(
        elevation: 20,
        borderRadius: BorderRadius.circular(15),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: themeData.colorScheme.secondary,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text(
              'Get Advice',
              style: themeData.textTheme.headlineLarge,
            ),
          ),
        ),
      ),
    );
  }
}
