import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFAE0001);
  static const Color secondary = Color(0xFF710001);

  static const Color yellow = Color(0xFFEEBA30);

  static const Color fontColor = Color(0xFFC0C0C0);
  static const Color backgroundColor = Color(0xFF000000);

  static const Color white = fontColor;

  static const backgroundGradient = LinearGradient(
    stops: [0.75, 1.0],
    colors: [
      AppColors.primary,
      AppColors.yellow,
    ],
    tileMode: TileMode.mirror,
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
