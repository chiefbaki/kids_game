import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/core/consts/app_colors.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/data/provider/profile_info.dart';
import 'package:kids_game/presentation/widgets/custom_on_top_widget.dart';
import 'package:kids_game/resources/resources.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:kids_game/resources/svg_pictures.dart';

class LearnWordsScreen extends StatefulWidget {
  const LearnWordsScreen({super.key});

  @override
  State<LearnWordsScreen> createState() => _LearnWordsScreenState();
}

class _LearnWordsScreenState extends State<LearnWordsScreen> {
  final audioPlayer = AudioPlayer();
  bool isPlaying = false;
  Duration duration = Duration.zero;
  Duration position = Duration.zero;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: AppColors.bgColor)),
      child: Scaffold(
          body: SafeArea(
              child: Column(
        children: [
           CustomTopWidget(
            profileName: context.watch<CharacterInfoProvider>().model!.nameOfCharacter,
            profilePhoto: context.watch<CharacterInfoProvider>().model!.photoOfCharacteForProfile,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
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
                  width: 227,
                  height: 337,
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
          // PlaySound(onPressed: () async {
          //   final assetsAudioPlayer = AssetsAudioPlayer();
          //   assetsAudioPlayer.open(Audio("assets/a.mp3"), autoStart: true);
          // }),
          Padding(
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
