import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/resources/resources.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 350,
          height: 200,
          decoration: BoxDecoration(
              gradient: const LinearGradient(
                  colors: AppColors.worksColor,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
              borderRadius: BorderRadius.circular(30)),
          child: Center(
              child: Text(
            "САНДАР",
            style: AppFonts.s40w600
                .copyWith(color: AppColors.white, shadows: [
              Shadow(
                  blurRadius: 4,
                  color: Colors.black.withOpacity(0.35),
                  offset: const Offset(0, 4))
            ]),
          )),
        ),
        Positioned(
            top: 0,
            right: 30,
            child: Image.asset(
              Images.four,
              width: 90,
            )),
        Positioned(
            top: 0,
            left: 18,
            child: Image.asset(
              Images.one,
              width: 75,
            )),
      ],
    );
  }
}
