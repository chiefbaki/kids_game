import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_color.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/presentation/widgets/custom_on_top_widget.dart';
import 'package:kids_game/presentation/widgets/play_sound_widget.dart';
import 'package:kids_game/resources/resources.dart';

// Страница с выполнением тестов из категории "Жомоктор"
class QuizStoryScreen extends StatelessWidget {
  const QuizStoryScreen({super.key});

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
                    height: 68,
                  ),
                  Text(
                    "АПЕНДИ ЖАНА ЭШЕК",
                    style: AppFonts.s30w600,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  Image.asset(
                    Images.body,
                    width: 300,
                    height: 208,
                  ),
                  const SizedBox(
                    height: 28,
                  ),
                  PlaySound(onPressed: () {}),
                  const SizedBox(
                    height: 28,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const AlwaysScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      child: SizedBox(
                          width: 355,
                          child: Text(
                            """Апендинин эшеги жоголуп кетиптир. Ал абдан кайгырды. Кишилер ага көңүл айтышып:\n‒ Кейип-кепчип эмне кыласың, өзүң аман болсоң болду, дагы башкасын сатып аларсың, ‒ дешти. ‒ Туура айтасыңар! Ошол эшекке минип турбаганым жакшы болгон экен, болбосо аны менен кошо өзүм да жоголуп кетмек экем! ‒ деп жооп бериптир Апенди.
                  Кишилер анын бул айтканына күлүп калышат. Анда Апен- динин ачуусу келип:""",
                            style: AppFonts.s18w600,
                          )),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
