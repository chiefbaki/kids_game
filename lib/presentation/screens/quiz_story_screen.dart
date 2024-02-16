import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/domain/repositories/get_audio_repository.dart';
import 'package:kids_game/presentation/blocs/audio_bloc/audio_bloc.dart';
import 'package:kids_game/presentation/blocs/audio_bloc/audio_event.dart';
import 'package:kids_game/presentation/blocs/story_id_bloc/story_id_bloc.dart';
import 'package:kids_game/presentation/blocs/story_id_bloc/story_id_event.dart';
import 'package:kids_game/presentation/blocs/story_id_bloc/story_id_state.dart';
import 'package:kids_game/presentation/widgets/custom_on_top_widget.dart';
import 'package:kids_game/presentation/widgets/play_sound_widget.dart';
import 'package:kids_game/resources/resources.dart';

// Страница с выполнением тестов из категории "Жомоктор"
class QuizStoryScreen extends StatefulWidget {
  final int id;

  const QuizStoryScreen({super.key, required this.id});

  @override
  State<QuizStoryScreen> createState() => _QuizStoryScreenState();
}

class _QuizStoryScreenState extends State<QuizStoryScreen> {
  @override
  Widget build(BuildContext context) {
    BlocProvider.of<StoryIdBloc>(context).add(GetStoryIdEvent(id: widget.id));
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: AppColors.bgColor,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: Scaffold(
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: BlocBuilder<StoryIdBloc, StoryIdState>(
                builder: (context, state) {
                  if (state is StoryIdLoadingState) {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  } else if (state is StoryIdSuccessState) {
                    return Column(
                      children: [
                        const CustomTopWidget(
                            profileName: "АКТАН", profilePhoto: Images.boy),
                        const SizedBox(
                          height: 68,
                        ),
                        Text(
                          state.model.title ?? "",
                          style: AppFonts.s30w600,
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Image.network(
                          state.model.image ?? "",
                          width: 300,
                          height: 208,
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        PlaySound(onPressed: () async {
                          BlocProvider.of<AudioBloc>(context)
                              .add(GetAudioEvent(text: "Эл Аралык Ала-Тоо"));

                          // final audioRepository = AudioRepository();
                          // final audioFile = await audioRepository.getAudio();

                          // (state.model.text ?? []).map((e) {
                          //           final title = e.title ?? '';
                          //           return  audioRepository.getAudio(text: title);
                          //         }).toList();

                          // debugPrint('Audio file saved: ${audioFile.path}');
                          final assetsAudioPlayer = AssetsAudioPlayer();

                          assetsAudioPlayer.open(
                            Audio("assets/audio/audio.mp3"),
                          );
                          
                        }),
                        const SizedBox(
                          height: 28,
                        ),
                        Expanded(
                          child: SingleChildScrollView(
                              physics: const AlwaysScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              child: SizedBox(
                                  width: 355,
                                  child: Column(
                                      children:
                                          (state.model.text ?? []).map((e) {
                                    final title = e.title ?? '';
                                    return Text(
                                      title.toString(),
                                      style: AppFonts.s18w600,
                                    );
                                  }).toList()))),
                        )
                      ],
                    );
                  } else if (state is StoryIdErrorState) {
                    debugPrint(state.error);
                  }
                  return const SizedBox.shrink();
                },
              ),
            ),
          ),
        ));
  }
}
