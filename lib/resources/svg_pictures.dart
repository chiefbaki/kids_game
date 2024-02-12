import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgPictures {
  // static const String left = 'assets/svgs/Left.svg';
  static final Widget left =
      SvgPicture.asset("assets/svgs/Left.svg", semanticsLabel: 'Acme Logo');

  // static const String right = 'assets/svgs/Right.svg';
  static final Widget right =
      SvgPicture.asset("assets/svgs/Right.svg", semanticsLabel: 'Acme Logo');
  // static const String vector = 'assets/svgs/Vector.svg';
  static final Widget cancel =
      SvgPicture.asset("assets/svgs/Vector.svg", semanticsLabel: 'Acme Logo');
}
