import 'package:advicer/2_application/pages/advice/widgets/advice_field.dart';
import 'package:advicer/2_application/pages/advice/widgets/app_bar_widget.dart';
import 'package:advicer/2_application/pages/advice/widgets/custom_button.dart';
import 'package:flutter/material.dart';

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
                  child:
                      AdviceField(themeData: themeData, advice: "I am an advice - your day will be good - or it wont be, since you are a bad person"),
                  /*CircularProgressIndicator(
                    color: themeData.colorScheme.secondary,
                  )*/
          
                  /*Text(
                    "Your Advice is waiting for you",
                    style: themeData.textTheme.headlineLarge,
                  ),*/
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
