import 'package:flutter/material.dart';
import 'package:jot_somethin/svg_widgets/rendering_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: svgIcon(),
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
      children: <Widget>[
        Container(
          color: Colors.black38,
          child: const Center(
            child: Text("Today Weather"),
          )
        ),
        Container(
          color: Colors.blueAccent,
          child: const Center(
            child: Text("5 Day Forecast"),
          )
        )
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