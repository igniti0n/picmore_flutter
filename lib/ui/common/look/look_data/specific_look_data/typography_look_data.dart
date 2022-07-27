import 'package:flutter/material.dart';

class TypographyLookData {
  const TypographyLookData({
    required this.primaryFontFamily,
    required this.h1,
    required this.h2,
    required this.h3,
    required this.h4,
    required this.subtitle1,
    required this.subtitle2,
    required this.body,
    required this.body2,
    required this.button,
    required this.caption,
    required this.overline,
  });

  const TypographyLookData.getDefault()
      : primaryFontFamily = 'Roboto',
        h1 = const TextStyle(fontWeight: FontWeight.bold, fontSize: 40, letterSpacing: -1),
        h2 = const TextStyle(fontSize: 32, letterSpacing: -0.75),
        h3 = const TextStyle(fontSize: 24, letterSpacing: -0.25),
        h4 = const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        subtitle1 = const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        subtitle2 = const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        body = const TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
        body2 = const TextStyle(fontSize: 15),
        button = const TextStyle(fontWeight: FontWeight.bold, fontSize: 17, color: Colors.white),
        caption = const TextStyle(fontSize: 14),
        overline = const TextStyle(fontSize: 12, fontWeight: FontWeight.w400);

  final String primaryFontFamily;

  final TextStyle h1;
  final TextStyle h2;
  final TextStyle h3;
  final TextStyle h4;

  final TextStyle subtitle1;
  final TextStyle subtitle2;

  final TextStyle body;
  final TextStyle body2;
  final TextStyle button;

  final TextStyle caption;
  final TextStyle overline;
}
