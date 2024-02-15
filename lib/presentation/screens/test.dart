import 'dart:io';
import 'dart:typed_data';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/domain/repositories/audio_repository.dart';
import 'package:kids_game/presentation/blocs/audio_bloc/audio_bloc.dart';
import 'package:kids_game/presentation/blocs/audio_bloc/audio_event.dart';
import 'package:kids_game/presentation/widgets/play_sound_widget.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  

  final player = AudioPlayer();

  Future<void> playAudioFromUrl(String url) async {
    await player.play(UrlSource(url));
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  // Future<void> playFromBytes(Uint8List audioBytes) async {
  //   try {

  //     final file = await _saveAudioToFile(audioBytes);

  //     // Воспроизведение аудио из файла
  //     await audioPlayer.play(file.path, isLocal: true);
  //   } catch (e) {
  //     print('Error playing audio: $e');
  //   }
  // }

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
              // playAudioFromUrl("/Users/islamkurbanov/Library/Developer/CoreSimulator/Devices/AD00D75F-1813-4385-B57F-451A0C9E594E/data/Containers/Data/Application/92077A1B-6168-447D-A684-9807CB08A085/Documents/audio.mp3");
              // BlocProvider.of<AudioBloc>(context).add(GetAudioEvent());
              //       AudioRepository audioRepository = AudioRepository();
              // File audioFile = await audioRepository.getAudio();

              // audioPlayer.play(audioFile.path as Source,);
              // if (result == 1) {
              //   print('Аудио успешно воспроизведено');
              // } else {
              //   print('Не удалось воспроизвести аудио');
              // }
            }),
          ],
        ),
      ),
    );
  }
}
