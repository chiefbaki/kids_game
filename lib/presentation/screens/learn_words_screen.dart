
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'package:kids_game/core/consts/app_colors.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/core/network/url_routes.dart';
import 'package:kids_game/data/provider/profile_info.dart';
import 'package:kids_game/presentation/widgets/custom_on_top_widget.dart';
import 'package:kids_game/presentation/widgets/play_sound_widget.dart';
import 'package:kids_game/resources/resources.dart';
import 'package:kids_game/resources/svg_pictures.dart';
// import 'package:audioplayers/audioplayers.dart';

class LearnWordsScreen extends StatefulWidget {
  const LearnWordsScreen({super.key});

  @override
  State<LearnWordsScreen> createState() => _LearnWordsScreenState();
}

class _LearnWordsScreenState extends State<LearnWordsScreen> {
  
  final player = AudioPlayer(); 
  @override
  void dispose() {
    super.dispose();
    player.stop();
  }
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
          CustomTopWidget(
            profileName:
                context.watch<CharacterInfoProvider>().model!.nameOfCharacter,
            profilePhoto: context
                .watch<CharacterInfoProvider>()
                .model!
                .photoOfCharacteForProfile,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: Row(
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
          PlaySound(onPressed: () async {
            final duration = await player.setUrl(
                "http://0d42-178-217-168-50.ngrok-free.app/mediafiles/word-audio/None.mp3"); // Schemes: (https: | file: | asset: )
            player.play();
            debugPrint("success");
          }),
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
