import 'package:flutter/material.dart';
import 'package:jot_somethin/screens/current_weather_page.dart';
import 'package:jot_somethin/screens/forecast_page.dart';
import 'package:jot_somethin/svg_widgets/rendering_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pageViewTingz(),
      ),
    );
  }

  PageView pageViewTingz() {
    return PageView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        homeSide(),
        quotesSide()
      ],
    );
  }

  Widget homeSide() {
    return PageView(
      scrollDirection: Axis.vertical,
      children: const <Widget>[
        WeatherPage(),
        FutureForecast()
      ],
    );
  }

  Widget quotesSide() {
    return PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        Container(
          color: Colors.deepPurpleAccent,
          child: const Center(
            child: Text("Quote"),
          )
        ),
        Container(
          color: Colors.amberAccent,
          child: const Center(
            child: Text("Quote 2"),
          )
        )
      ],
    );
  }
}