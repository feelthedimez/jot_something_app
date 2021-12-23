import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:jot_somethin/svg_widgets/rendering_svg.dart';

class WeatherPage extends StatelessWidget {
  const WeatherPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF7F7F7),
        elevation: 0,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              right: 25.0,
              top: 15.0
            ),
            child: InkWell(
              onTap: () => Navigator.pushNamed(context, '/settings-page'),
              child: const Icon(
                Icons.settings,
                color: Color(0xFF231F20),
              ),
            )
          )
        ],
      ),
      body: Stack(
        children: [
          Align(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _cityHeader("Pretoria"),
                _weatherCondition("Heavy Rain")
              ],
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              margin: const EdgeInsets.only(bottom: 50),
              child: svgIcon()
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _dayTemperature("12", "21", "16"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: _greetingMessage("Good Morning"),
          )
        ],
      )
    );
  }

  Widget _cityHeader(String cityName) {
    return Container(
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.only(
        top: 60,
      ),
      child: Text(
        cityName,
        style: const TextStyle(
          fontSize: 55,
          fontWeight: FontWeight.w500
        ),
      )
    );
  }

  Widget _weatherCondition(String condition) {
    return Text(
      condition,
      style: const TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w100
      ),
    );
  }

  Widget _dayTemperature(String earlyTemp, String dayTemp, String laterTemp) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 160
      ),
      child: RichText(
        text: TextSpan(
          text: '$earlyTemp° / ',
          style: const TextStyle(
            fontSize: 18,
            color: Color(0xFF414042),
            fontWeight: FontWeight.w300
          ),
          children: <TextSpan>[
            TextSpan(
              text: "$dayTemp°",
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.black,
                fontSize: 26,
                fontStyle: FontStyle.italic
              )
            ),
            TextSpan(
              text: ' / $laterTemp°'
            )
          ]
        )
      ),
    );
  }

  Widget _greetingMessage(String message) {
    return Container(
      margin: const EdgeInsets.only(
        bottom: 55
      ),
      child: Text(
        message,
        style: const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 27
        )
      )
    );
  }

  Widget _tempIcon() {
    return IconButton(
      icon: const FaIcon(FontAwesomeIcons.temperatureLow),
      onPressed: (){},
    );
  }
}