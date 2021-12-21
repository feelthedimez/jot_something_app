import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

const String assetName = 'assets/weather-icons/light_mode/snow_1.svg';

Widget svgIcon() {
  return Center(
    child: SvgPicture.asset(
      assetName,
      semanticsLabel: 'The Things man!',
      height: 140,
    )
  );
}