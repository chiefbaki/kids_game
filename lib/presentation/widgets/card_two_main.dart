import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/presentation/screen/story_screen.dart';
import 'package:kids_game/resources/resources.dart';

class CardTwoMainScreen extends StatelessWidget {
  const CardTwoMainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (_) => const StoryScreen())),
          child: Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: AppColors.mainScreenCardTwo,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
                child: Text(
              "ЖОМОКТОР",
              style:
                  AppFonts.s40w600.copyWith(color: AppColors.white, shadows: [
                Shadow(
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.35),
                    offset: const Offset(0, 4))
              ]),
            )),
          ),
        ),
        Positioned(
            top: 0,
            right: 0,
            child: Image.asset(
              Images.unnamed1,
              width: 90,
            )),
        Positioned(
            bottom: 0,
            left: 18,
            child: Image.asset(
              Images.jomoktorKyrgyzcha101,
              width: 125,
            )),
      ],
    );
  }
}
