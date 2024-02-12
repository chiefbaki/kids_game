import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_colors.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/presentation/widgets/custom_on_top_widget.dart';
import 'package:kids_game/presentation/widgets/play_sound_widget.dart';
import 'package:kids_game/resources/resources.dart';
import 'package:kids_game/resources/svg_pictures.dart';


class LearnWordsScreen extends StatelessWidget {
  const LearnWordsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: AppColors.bgColor,
              begin: Alignment.topRight,
              end: Alignment.bottomRight)),
      child: Scaffold(
          body: SafeArea(
              child: Column(
        children: [
          const CustomTopWidget(
            profileName: "АКТАН",
            profilePhoto: Images.boy,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100, right: 16, left: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: SvgPictures.left,
                  iconSize: 50,
                ),
                Image.asset(
                  width: 260,
                  height: 370,
                  Images.apple,
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPictures.right,
                  iconSize: 50,
                ),
              ],
            ),
          ),
          const PlaySound(),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              "АЛМА",
              style: AppFonts.s40w600,
            ),
          )
        ],
      ))),
    );
  }
}
