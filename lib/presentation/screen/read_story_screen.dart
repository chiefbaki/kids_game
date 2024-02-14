import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/core/consts/app_colors.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/data/provider/profile_info.dart';
import 'package:kids_game/presentation/widgets/custom_on_top_widget.dart';
import 'package:kids_game/presentation/widgets/play_sound_widget.dart';
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
        body: SafeArea(
          child: Column(
            children: [
               Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: CustomTopWidget(
                    profileName: context.watch<CharacterInfoProvider>().model!.nameOfCharacter
                    , profilePhoto: context.watch<CharacterInfoProvider>().model!.photoOfCharacteForProfile),
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 40, bottom: 28),
                        child: Text(
                          textAlign: TextAlign.center,
                          "АПЕНДИ ЖАНА ЭШЕК",
                          style: AppFonts.s30w600
                        ),
                      ),
                      Image.asset(
                        Images.jomok,
                        height: 208,
                        width: 300,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 28),
                        child: PlaySound(onPressed: (){},),
                      ),
                      Text(
                        "Апендинин эшеги жоголуп кетиптир. Ал абдан кайгырды. Кишилер ага көңүл айтышыпКейип-кепчип эмне кыласың, өзүң аман болсоң болду, дагы башкасын сатып аларсың, ‒ дешти.‒ Туура айтасыңар! Ошол эшекке минип турбаганым жакшы болгон экен, болбосо аны менен кошо өзүм да жоголуп кетмек экем! ‒ деп жооп бериптир Апенди.Кишилер анын бул айтканына күлүп ",
                        style: AppFonts.s18w600,
                      )
                    ],
                  ),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
