import 'package:flutter/material.dart';

Color White = Colors.white;
Color Blue = Colors.blue;
Color Grey = Colors.grey;
Color Green = Colors.green;
Color litepurple = const Color(0xFF6562FB);
Color Purple = Color(0xFF800080);

class GrdColor {
  static LinearGradient colorsScaffold = const LinearGradient(
      colors: [Color(0xFF44103c), Color(0xFF000059), Colors.black],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}

class buttons {
  static LinearGradient buttonColor = LinearGradient(
      colors: [
        const Color(0xFF497BFF).withOpacity(0.7),
        const Color(0xFF402788).withOpacity(0.6),
        const Color(0xFF0F55E8).withOpacity(0.5)
      ],
      begin: Alignment.topRight,
      tileMode: TileMode.decal,
      end: Alignment.bottomLeft);

  static var gradientColor;
}

class containerGrd {
  static LinearGradient gradientColor = const LinearGradient(
      colors: [Color(0xFF44103c), Color(0xFF000059), Colors.black],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}
