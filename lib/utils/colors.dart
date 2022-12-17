import 'package:flutter/material.dart';

class AppCustomColors {
  static MaterialColor light = const MaterialColor(
    0xFFFFFFFF,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFFFCFC),
      200: Color(0xFFFCFCFC),
    },
  );

  static MaterialColor dark = const MaterialColor(
    0xFF000000,
    <int, Color>{
      50: Color(0xFF7A7E80),
      100: Color(0xFF979797),
      200: Color(0xFF888888),
      300: Color(0xFF555555),
      400: Color(0xFF333333),
      500: Color(0xFF000000),
      600: Color(0xFF000000),
    },
  );

  static MaterialColor primary = const MaterialColor(
    0xFFDD8560,
    <int, Color>{
      50: Color(0xFFDD8560),
    },
  );

  static Color borderColor = const Color(0xFFFFFEFE);
}
