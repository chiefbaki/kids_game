import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/presentation/widgets/card_one_main.dart';
import 'package:kids_game/presentation/widgets/card_two_main.dart';
import 'package:kids_game/resources/resources.dart';

class ProfileScreen extends StatelessWidget {
  String profilePhoto;
  String nameOfCharacter;
  ProfileScreen({super.key,
  required this.nameOfCharacter,

  required this.profilePhoto

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: AppColors.bgColor,
              begin: Alignment.topRight,
              end: Alignment.bottomRight)),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 39),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      nameOfCharacter,
                      style: AppFonts.s40w600
                          .copyWith(color: AppColors.white, shadows: [
                        Shadow(
                            blurRadius: 4,
                            color: Colors.black.withOpacity(0.35),
                            offset: const Offset(0, 4))
                      ]),
                    ),
                     CircleAvatar(

                        radius: 30,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          profilePhoto,
                          
                          

                        ),
                         )
                  ],
                ),
                const SizedBox(
                  height: 45,
                ),
                const CardOneMainScreen(),
                const SizedBox(
                  height: 39,
                ),
                const CardTwoMainScreen()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

