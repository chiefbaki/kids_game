
import 'package:animated_icon/animated_icon.dart';
import 'package:flutter/material.dart';

class PlaySound extends StatelessWidget {
  const PlaySound({
    super.key,
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
          onTap: () {},
          iconType: IconType.continueAnimation,
          animateIcon: AnimateIcons.volume),
    );
  }
}
