import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/presentation/screens/quiz_story_screen.dart';

class StoryCard extends StatelessWidget {
  final String title;
  final String img;
  final int id;
  
  const StoryCard({
    super.key,
    required this.img,
    required this.title,
    required this.id,

  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppFonts.s30w600.copyWith(color: AppColors.white, shadows: [
            Shadow(
                blurRadius: 4,
                color: Colors.black.withOpacity(0.35),
                offset: const Offset(0, 4))
          ]),
        ),
        GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => QuizStoryScreen(id: id,)));
          },
          child: Container(
            width: 375,
            height: 170,
            decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(img), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(30)),
          ),
        )
      ],
    );
  }
}
