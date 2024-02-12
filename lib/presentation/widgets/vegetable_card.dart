import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/resources/resources.dart';

class VegetablesCard extends StatelessWidget {
  const VegetablesCard({
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
                  colors: AppColors.vegetableCardColor,
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft),
              borderRadius: BorderRadius.circular(30)),
          child: Center(
              child: Text(
            "ЖЕР ЖЕМИШ",
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
            left: 0,
            child: Image.asset(
              Images.potato,
              width: 150,
            )),
        Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              Images.carrot,
              width: 155,
            )),
    
        Positioned(
            bottom: 0,
            right: 70,
            child: Image.asset(
              Images.tomato,
              width: 155,
            )),
      ],
    );
  }
}

