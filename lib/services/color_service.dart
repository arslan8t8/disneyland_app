import 'package:flutter/material.dart';

MaterialColor buildMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  // ignore: avoid_function_literals_in_foreach_calls
  strengths.forEach((strength) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  });
  return MaterialColor(color.value, swatch);
}

const primaryColor = Color(0xFF3081C3);
const color1 = Color(0xFF8EA0EB);
const color2 = Color(0xFFFFD152);
const color3 = Color(0xFF64D6CD);
const color4 = Color(0xFFFF8957);

const colorBlack = Color(0xFF000000);
const colorWhite = Color(0xFFFFFFFF);
const colorText = Color(0xFFC2C2C2);
const colorText1 = Color(0xFF393939);
const colorText2 = Color(0xFF9E9E9E);
const colorGray = Color(0xFFB3B3B3);
const colorGray2 = Color(0xFFE7E7E7);
const colorBlue = Color(0xFF4560CB);
const colorRed = Color.fromARGB(255, 240, 3, 3);
