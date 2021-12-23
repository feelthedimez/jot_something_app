import 'package:flutter/material.dart';

Widget headerWidget(String headerTitle, bool alignmentVal, [double? marginTop, double? marginBottom]) {
  return Container(
    alignment: alignmentVal ? Alignment.center : Alignment.centerLeft,
    margin: EdgeInsets.only(
      top: marginTop = marginTop ?? 0,
      bottom: marginBottom = marginBottom ?? 0,
    ),
    child: Text(
      headerTitle,
      style: const TextStyle(
      fontSize: 50,
      )
    )
  );
}

Widget appName() {
  return Container(
    alignment: Alignment.center,
    margin: const EdgeInsets.only(
      bottom: 30
    ),
    child: const Text(
      "Jot Somethin'",
      style: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500
      )
    )
  );
}