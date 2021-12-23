import 'package:flutter/material.dart';
import 'package:jot_somethin/screens/current_weather_page.dart';
import 'package:jot_somethin/screens/forecast_page.dart';
import 'package:jot_somethin/screens/home_page.dart';
import 'package:jot_somethin/screens/settings_page.dart';

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
            canvasColor: const Color(0xFFF7F7F7),
            scaffoldBackgroundColor: const Color(0xFFF7F7F7),
            backgroundColor: const Color(0xFFF7F7F7)
          ),
          darkTheme: ThemeData.dark(

          ),
          themeMode: currentMode,
          initialRoute: '/',
          routes: {
            '/': (_) => const HomePage(),
            '/settings-page': (_) => const SettingsPage(),
            '/future-forecast': (_) => const FutureForecast(),
          },
        );
      }
    );
  }


}
