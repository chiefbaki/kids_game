import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:kids_game/domain/repositories/audio_repository.dart';
import 'package:kids_game/presentation/widgets/play_sound_widget.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlaySound(onPressed: () async {
              final audioRepository = AudioRepository();
              final audioFile = await audioRepository.getAudio();
              debugPrint('Audio file saved: ${audioFile.path}');
              final assetsAudioPlayer = AssetsAudioPlayer();

              assetsAudioPlayer.open(
                Audio("assets/audio/audio.mp3"),
              );
            }),
          ],
        ),
      ),
    );
  }
}
