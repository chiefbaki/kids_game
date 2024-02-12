import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/presentation/widgets/number_card.dart';
import 'package:kids_game/presentation/widgets/work_card.dart';
import 'package:kids_game/presentation/widgets/fruits_card.dart';
import 'package:kids_game/presentation/widgets/vegetable_card.dart';
import 'package:kids_game/resources/resources.dart';

class WordsScreen extends StatelessWidget {
  const WordsScreen({super.key});

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
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          size: 57,
                          color: AppColors.white,
                          shadows: [
                            Shadow(
                                blurRadius: 4,
                                color: Colors.black.withOpacity(0.35),
                                offset: const Offset(0, 4))
                          ],
                        )),
                    Text(
                      "АКТАН",
                      style: AppFonts.s40w600
                          .copyWith(color: AppColors.white, shadows: [
                        Shadow(
                            blurRadius: 4,
                            color: Colors.black.withOpacity(0.35),
                            offset: const Offset(0, 4))
                      ]),
                    ),
                    const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          Images.avatar,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 39,
                ),
                const Expanded(
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    child: Column(
                      children: [
                         FruitsCard(),
                         SizedBox(
                          height: 25,
                        ),
                         VegetablesCard(),
                         SizedBox(
                          height: 25,
                        ),
                         WorkCard(),
                         SizedBox(
                          height: 25,
                        ),
                        NumberCard()
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

