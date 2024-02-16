import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/presentation/blocs/audio_bloc/audio_bloc.dart';
import 'package:kids_game/presentation/blocs/audio_bloc/audio_event.dart';
import 'package:kids_game/presentation/blocs/audio_bloc/audio_state.dart';
import 'package:kids_game/presentation/widgets/play_sound_widget.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {

  // void playAudio(String url) {
  //   final player = AssetsAudioPlayer();
  //   player.open(Audio(url));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocListener<AudioBloc, AudioState>(
              listener: (context, state) {
                if (state is AudioLoadingState) {
                  print("Loading");
                } else if (state is AudioSuccessState) {
                  print("Success");
                } else if (state is AudioErrorState) {
                  print("error");
                }
              },
              child: PlaySound(onPressed: () async {
                BlocProvider.of<AudioBloc>(context)
                    .add(GetAudioEvent(text: "Ала-Тоо"));
                // final audioRepository = AudioRepository();
                // final audioFile = await audioRepository.getAudio(text: "16 январь");
                // debugPrint('Audio file saved: ${audioFile.path}');
                // final assetsAudioPlayer = AssetsAudioPlayer();

                // assetsAudioPlayer.open(
                //   Audio("assets/audio/audio.mp3"),
                // );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
