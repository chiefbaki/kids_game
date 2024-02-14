import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/presentation/screen/words_screen.dart';
import 'package:kids_game/resources/resources.dart';

class CardOneMainScreen extends StatelessWidget {
  const CardOneMainScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        InkWell(
          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const WordsScreen())),
          child: Container(
            width: 350,
            height: 200,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: AppColors.mainScreenCardOne,
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft),
                borderRadius: BorderRadius.circular(30)),
            child: Center(
                child: Text(
              "СӨЗ ЖАТТОО",
              style: AppFonts.s40w600.copyWith(color: AppColors.white, shadows: [
                Shadow(
                    blurRadius: 4,
                    color: Colors.black.withOpacity(0.35),
                    offset: const Offset(0, 4))
              ]),
            )),
          ),
        ),
        Positioned(
            bottom: 0,
            right: 0,
            child: Image.asset(
              Images.cow,
              width: 105,
            )),
        Positioned(
            top: 0,
            right: 80,
            child: Image.asset(
              Images.ball,
              width: 135,
            )),
        Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              Images.appleMain,
              width: 100,
            )),
      ],
    );
  }
}
