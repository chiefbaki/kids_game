import 'package:another_flutter_splash_screen/another_flutter_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/presentation/screen/choose_character_screen.dart';
import 'package:kids_game/resources/resources.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterSplashScreen.scale(
      gradient: const LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: AppColors.bgColor,
      ),
      childWidget: SizedBox(
        height: 400,
        child: Image.asset(Images.logo, width: 400, height: 400,),
      ),
      duration: const Duration(milliseconds: 3000),
      animationDuration: const Duration(milliseconds: 1000),
      onAnimationEnd: () => debugPrint("On Scale End"),
      nextScreen: const ChooseCharacterScreen(),
    );
  }
}
