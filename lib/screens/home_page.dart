import 'package:flutter/material.dart';
import 'package:jot_somethin/main.dart';
import 'package:switcher_button/switcher_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            color: Colors.pink,
            child: const Center(
              child: Text('Page 1')
            )
          ),
          Container(
            color: Colors.cyan
          ),
          Container(
            color: Colors.amber
          )
        ],
      ),
    );
  }
}