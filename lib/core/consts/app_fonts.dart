import 'package:flutter/material.dart';

abstract class AppFonts {

  static  TextStyle s40w600 = TextStyle(
    fontSize: 40,

    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontFamily: "Inter",

    shadows: [
        Shadow(
            blurRadius: 4,
            color: Colors.black.withOpacity(0.35),
            offset: const Offset(0, 4))
      ]
  );
  static TextStyle s30w600 = TextStyle(
      fontSize: 25,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: "Inter",
      shadows: [
        Shadow(
            blurRadius: 4,
            color: Colors.black.withOpacity(0.35),
            offset: const Offset(0, 4))
      ]);
      static TextStyle s18w600 = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: Colors.white,
      fontFamily: "Inter",
      shadows: [
        Shadow(
            blurRadius: 4,
            color: Colors.black.withOpacity(0.35),
            offset: const Offset(0, 4))
      ]);

}
