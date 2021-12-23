import 'package:flutter/material.dart';
import 'package:jot_somethin/main.dart';
import 'package:jot_somethin/reusable_widgets/header_widgets.dart';
import 'package:switcher_button/switcher_button.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xFFF7F7F7),
        iconTheme: const IconThemeData(
            color: Color(0xFF231F20)
        )
      ),
      body: Container(
        margin: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            headerWidget("App Settings", false),
            _listItem("Dark Mode", context),
          ],
        )
      )
    );
  }

  SwitcherButton switchButton(context) {
    return SwitcherButton(
      size: 45.0,
      value: _checkIfDarkModeEnabled(context),
      onChange: (value) {
        JotSomethinApp.themeNotifier.value =
            JotSomethinApp.themeNotifier.value == ThemeMode.light
                ? ThemeMode.dark
                : ThemeMode.light;
      }
    );
  }

  Widget _listItem(String listName, context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 15),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          side: BorderSide(
            width: 2,
            color: Color(0xFF404040),
          )
      ),

      child: ListTile(
        contentPadding: const EdgeInsets.only(
          top: 4,
          bottom: 4,
          right: 30,
          left: 20
        ),
        title: Text(
          listName,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        trailing: switchButton(context),
      ),
    );
  }

  bool _checkIfDarkModeEnabled(context) {
    final ThemeData theme = Theme.of(context);
    return theme.brightness == Brightness.light ? false : true;
  }
}