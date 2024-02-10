import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';


class StoryCard extends StatelessWidget {
  final String title; 
  final String img;
  const StoryCard({
    super.key,
    required this.img,
    required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppFonts.s30w600
              .copyWith(color: AppColors.white, shadows: [
            Shadow(
                blurRadius: 4,
                color: Colors.black.withOpacity(0.35),
                offset: const Offset(0, 4))
          ]),
        ),
        Container(
          width: 375,
          height: 170,
          decoration: BoxDecoration(
              
              image: DecorationImage(
                  image: AssetImage(img)),
              borderRadius: BorderRadius.circular(30)),
        )
      ],
    );
  }
}
