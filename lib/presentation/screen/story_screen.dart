import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/data/model/story_model.dart';
import 'package:kids_game/presentation/widgets/story_card.dart';
import 'package:kids_game/resources/resources.dart';

class StoryScreen extends StatelessWidget {
  const StoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: AppColors.bgColor,
              begin: Alignment.topRight,
              end: Alignment.bottomRight)),
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 39),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          size: 57,
                          color: AppColors.white,
                          shadows: [
                            Shadow(
                                blurRadius: 4,
                                color: Colors.black.withOpacity(0.35),
                                offset: const Offset(0, 4))
                          ],
                        )),
                    Text(
                      "АКТАН",
                      style: AppFonts.s40w600
                          .copyWith(color: AppColors.white, shadows: [
                        Shadow(
                            blurRadius: 4,
                            color: Colors.black.withOpacity(0.35),
                            offset: const Offset(0, 4))
                      ]),
                    ),
                    const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(
                          Images.avatar,
                        ))
                  ],
                ),
                Expanded(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 1,
                      child: ListView.separated(
                          itemBuilder: (_, index) {
                            return StoryCard(title: StoryModelList.models[index].title, img: StoryModelList.models[index].img ,);
                          },
                          separatorBuilder: (_, index) {
                            return const SizedBox(height: 41);
                          },
                          itemCount: StoryModelList.models.length)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
