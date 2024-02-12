import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/resources/resources.dart';

class FruitsCard extends StatelessWidget {
  const FruitsCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
            width: 350,
            height: 170,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: AppColors.cardColor,
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
              child: Text(
                "МӨМӨ ЖЕМИШ",
                style: AppFonts.s40w600
                    .copyWith(color: AppColors.white, shadows: [
                  Shadow(
                      blurRadius: 4,
                      color: Colors.black.withOpacity(0.35),
                      offset: const Offset(0, 4))
                ]),
              ),
            )),
        Positioned(
            left: 127,
            child: Image.asset(
          Images.limon,
          width: 102,
        )),
        Positioned(
            bottom: 0,
            child: Image.asset(
          Images.apple,
          width: 132,
        )),
        Positioned(
            right: 0,
            bottom: 0,
            child: Image.asset(
          Images.pear,
          width: 102,
        )),
      ],
    );
  }
}
