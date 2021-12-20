import 'package:flutter/material.dart';
import 'package:jot_somethin/main.dart';
import 'package:switcher_button/switcher_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  SwitcherButton switchButton(BuildContext context) {
    return SwitcherButton(
        value: _checkIfDarkModeEnabled(context),
        onChange: (value) {
          JotSomethinApp.themeNotifier.value =
              JotSomethinApp.themeNotifier.value == ThemeMode.light
                  ? ThemeMode.dark
                  : ThemeMode.light;
      }
    );
  }

  bool _checkIfDarkModeEnabled(context) {
    final ThemeData theme = Theme.of(context);

    if (theme.brightness == Brightness.light) {
      return false;
    }
    return true;
  }
}