
import 'package:animated_icon/animated_icon.dart';
import 'package:flutter/material.dart';

class PlaySound extends StatelessWidget {
  final Function() onPressed;
  const PlaySound({
    super.key,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: AnimateIcon(
          onTap: onPressed,
          iconType: IconType.continueAnimation,
          animateIcon: AnimateIcons.volume),
    );
  }
}
