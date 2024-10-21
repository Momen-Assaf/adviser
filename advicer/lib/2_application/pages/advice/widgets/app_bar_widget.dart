import 'package:advicer/2_application/core/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final ThemeData themeData;
  const AppBarWidget({super.key, required this.themeData});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        'Advicer',
        style: themeData.textTheme.headlineLarge,
      ),
      centerTitle: true,
      actions: [
        Switch(
          value: Provider.of<ThemeService>(context).isDarkModeOn,
          onChanged: (_) {
            Provider.of<ThemeService>(context, listen: false).toggleTheme();
          },
        ),
      ],
    );
  }
}
