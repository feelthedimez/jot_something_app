import 'package:flutter/material.dart';
import 'package:jot_somethin/main.dart';
import 'package:switcher_button/switcher_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IconButton(
          icon: Icon(JotSomethinApp.themeNotifier.value == ThemeMode.light
              ? Icons.dark_mode
              : Icons.light_mode),
          onPressed: () {
            JotSomethinApp.themeNotifier.value =
                JotSomethinApp.themeNotifier.value == ThemeMode.light
                    ? ThemeMode.dark
                    : ThemeMode.light;
          }
        )
      ),
    );
  }
}

class Stuff extends StatelessWidget {
  const Stuff({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SwitcherButton(
      
    );
  }
}