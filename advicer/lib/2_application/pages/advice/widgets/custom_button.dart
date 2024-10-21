import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final ThemeData themeData;
  const CustomButton({super.key, required this.themeData});

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      onTap: () {
        debugPrint('Custom button pressed');
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
