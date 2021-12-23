import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

const String assetName = 'assets/weather-icons/light_mode/snow_1.svg';
const String assetName2 = 'assets/weather-icons-clean/light_mode/cloud.svg';

Widget svgIcon() {
  return SvgPicture.asset(
    assetName,
    semanticsLabel: 'The Things man!',
    height: 180,
  );
}

Widget svgGridIcon() {
  return SvgPicture.asset(
    assetName2,
    semanticsLabel: 'The Things man!',
    height: 25,
  );
}