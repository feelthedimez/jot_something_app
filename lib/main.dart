import 'package:flutter/material.dart';
import 'package:jot_somethin/screens/home_page.dart';

void main() {
  runApp(const JotSomethinApp());
}

class JotSomethinApp extends StatelessWidget {
  const JotSomethinApp({Key? key}) : super(key: key);

  static final ValueNotifier<ThemeMode> themeNotifier =
      ValueNotifier(ThemeMode.light);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier, 
      builder: (_, ThemeMode currentMode, __) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Jot Somethin'",
          theme: ThemeData(
            fontFamily: 'Poppins',
            brightness: Brightness.light,
            primarySwatch: Colors.amber,
          ),
          darkTheme: ThemeData.dark(),
          themeMode: currentMode,
          home: const HomePage()
        );
      }
    );
  }
}
