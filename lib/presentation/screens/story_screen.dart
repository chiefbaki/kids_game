import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/core/consts/app_colors.dart';
import 'package:kids_game/data/provider/profile_info.dart';
import 'package:kids_game/presentation/blocs/story_bloc/story_bloc.dart';
import 'package:kids_game/presentation/blocs/story_bloc/story_event.dart';
import 'package:kids_game/presentation/blocs/story_bloc/story_state.dart';
import 'package:kids_game/presentation/widgets/custom_on_top_widget.dart';
import 'package:kids_game/presentation/widgets/story_card.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<StoryBloc>(context).add(GetStoryEvent());
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: AppColors.bgColor,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        )),
        child: SafeArea(
          child: Scaffold(
            body: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 39),
                child: Column(children: [
                  CustomTopWidget(
                      profileName: context
                              .watch<CharacterInfoProvider>()
                              .model
                              ?.nameOfCharacter ??
                          "АКТАН",
                      profilePhoto: context
                              .watch<CharacterInfoProvider>()
                              .model
                              ?.photoOfCharacteForProfile ??
                          ""),
                  BlocBuilder<StoryBloc, StoryState>(builder: (context, state) {
                    if (state is StoryLoadingState) {
                      return const Center(
                        child: CircularProgressIndicator.adaptive(),
                      );
                    } else if (state is StoryErrorState) {
                      debugPrint(state.error);
                    } else if (state is StorySuccessState) {
                      print("Success");
                      return Expanded(
                        child: SizedBox(
                            height: MediaQuery.of(context).size.height * 1,
                            child: ListView.separated(
                                itemBuilder: (_, index) {
                                  return StoryCard(
                                    
                                    id: state.storyModelList[index].id ?? 0,
                                      title:
                                          state.storyModelList[index].title ?? "",
                                              
                                      img: state.storyModelList[index].image ?? "");
                                },
                                separatorBuilder: (_, index) {
                                  return const SizedBox(height: 41);
                                },
                                itemCount: state.storyModelList.length)),
                      );
                    }
                    return const SizedBox.shrink();
                  })
                ]),
              ),
            ),
          ),
        ));
  }
}
