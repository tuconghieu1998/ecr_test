import 'package:flutter/material.dart';

class ColorPalette {
  static const Color primaryColor = Color(0xffeb1956);
  static const Color secondColor = Color(0xffeb1956);

  static const Color textColor = Color(0xff1a153a);
  static const Color backgroundScaffoldColor = Color(0xffF2F2F2);
}

class Gradients {
  static const Gradient defaultGradientBackground = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomLeft,
    colors: [
      ColorPalette.primaryColor,
      ColorPalette.secondColor
    ],
  );
}