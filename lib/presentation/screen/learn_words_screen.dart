import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_colors.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/presentation/widgets/custom_on_top_widget.dart';
import 'package:kids_game/presentation/widgets/play_sound_widget.dart';
import 'package:kids_game/resources/resources.dart';
import 'package:kids_game/resources/svg_pictures.dart';
import 'package:audioplayers/audioplayers.dart';

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
  // @override
  // void initState() {
  //   audioPlayer.onPlayerStateChanged.listen((state) {
  //     isPlaying = state == PlayerState.playing;
  //   });
  //   audioPlayer.onDurationChanged.listen((event) {
  //     setState(() {
  //       duration = event;
  //     });
  //   });

  //   audioPlayer.onPositionChanged.listen((event) {
  //     setState(() {
  //       position = event;
  //     });
  //   });
  //   super.initState();
  // }

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
            padding: const EdgeInsets.only(top: 100),
            child: Row(
              children: [
                // IconButton(
                //   onPressed: () {},
                //   icon: SvgPictures.left,
                //   iconSize: 50,
                // ),
                Image.asset(
                  width: 260,
                  height: 370,
                  Images.apple,
                ),
                // IconButton(
                //   onPressed: () {},
                //   icon: SvgPictures.right,
                //   iconSize: 50,
                // ),
              ],
            ),
          ),
          PlaySound(onPressed: () async {
            final assetsAudioPlayer = AssetsAudioPlayer();
            assetsAudioPlayer.open(Audio("assets/a.mp3"), autoStart: true);
            
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
