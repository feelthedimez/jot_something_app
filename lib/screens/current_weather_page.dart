import 'package:flutter/material.dart';

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
      body: const Center(
        child:  Text("Today's Weather!")
      )
    );
  }
}