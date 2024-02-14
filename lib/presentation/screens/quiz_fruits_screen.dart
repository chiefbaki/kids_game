import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/presentation/widgets/custom_on_top_widget.dart';
import 'package:kids_game/presentation/widgets/play_sound_widget.dart';
import 'package:kids_game/resources/resources.dart';

// Страница с выполнением тестов из категории "Жомоктор"
class QuizFruitsScreen extends StatefulWidget {
  const QuizFruitsScreen({super.key});

  @override
  State<QuizFruitsScreen> createState() => _QuizFruitsScreenState();
}

class _QuizFruitsScreenState extends State<QuizFruitsScreen> {
  bool isSelected = false;
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
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
              child: Column(
                children: [
                  const CustomTopWidget(
                      profileName: "АКТАН", profilePhoto: Images.boy),
                  const SizedBox(
                    height: 28,
                  ),
                  PlaySound(
                    onPressed: () {},
                    width: 110,
                    height: 110,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  GestureDetector(
                    onTap: () {
                      isSelected = !isSelected;
                      setState(() {});
                    },
                    child: Container(
                      width: 170,
                      height: 170,
                      decoration: BoxDecoration(
                        color:
                            isSelected ? AppColors.white : Colors.transparent,
                        // boxShadow: [
                        //   BoxShadow(
                        //       blurRadius: 5,
                        //       spreadRadius: 1,
                        //       offset: const Offset(4, 5),
                        //       color: isSelected == index
                        //           ? AppColors.selectedBoxShadowColor
                        //           : AppColors.unselectedBoxShadowColor)
                        // ],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Image.asset(
                        Images.apple,
                        fit: BoxFit.contain,
                        width: 72,
                        height: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
