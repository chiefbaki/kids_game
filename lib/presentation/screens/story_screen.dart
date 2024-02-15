import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/core/consts/app_colors.dart';
import 'package:kids_game/data/model/story_model.dart';
import 'package:kids_game/data/provider/profile_info.dart';
import 'package:kids_game/presentation/screens/read_story_screen.dart';
import 'package:kids_game/presentation/widgets/custom_on_top_widget.dart';
import 'package:kids_game/presentation/widgets/story_card.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 39),
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
                Expanded(
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 1,
                      child: ListView.separated(
                          itemBuilder: (_, index) {
                            return GestureDetector(
                                onTap: () => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ReadStoryScreen())),
                                child: StoryCard(
                                  title: StoryModelList.models[index].title,
                                  img: StoryModelList.models[index].img,
                                ));

                            // return StoryCard(
                            //   title: StoryModelList.models[index].title,
                            //   img: StoryModelList.models[index].img,
                            // );
                          },
                          separatorBuilder: (_, index) {
                            return const SizedBox(height: 41);
                          },
                          itemCount: StoryModelList.models.length)),
                ),
              ]),
            ),
          ),
        ));
  }
}
