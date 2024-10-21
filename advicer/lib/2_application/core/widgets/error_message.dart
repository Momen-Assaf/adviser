import 'package:flutter/material.dart';

class ErrorMessage extends StatelessWidget {
  final ThemeData themeData;
  final String message;
  const ErrorMessage(
      {super.key, required this.themeData, required this.message});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(
          Icons.error,
          size: 40,
          color: Colors.red,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          message,
          style: themeData.textTheme.headlineLarge,
          textAlign: TextAlign.center,
        )
      ],
    );
  }
}
