
import 'package:animated_icon/animated_icon.dart';
import 'package:flutter/material.dart';

class PlaySound extends StatelessWidget {
  final Function() onPressed;
  final double width;
  final double height;
  const PlaySound({
    super.key,
    required this.onPressed,
    this.width = 80,
    this.height = 80
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: AnimateIcon(
          onTap: onPressed,
          iconType: IconType.continueAnimation,
          animateIcon: AnimateIcons.volume,),
    );
  }
}
