import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_colors.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/presentation/screen/profile_screen.dart';
import 'package:kids_game/resources/resources.dart';

class ChooseCharacterScreen extends StatelessWidget {
  const ChooseCharacterScreen({super.key});

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
              child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Center(
                  child: Text(
                    "КААРМАН ТАНДАНЫЗ",
                    style: AppFonts.s30w600,
                  ),
                ),
              ),
              Expanded(
                  child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ProfileScreen())),
                      child: Image.asset(
                        Images.aktan,
                        height: 150,
                        width: 350,
                      ),
                    ),
                  );
                },
                itemCount: 5,
              ))
            ],
          ),
        ),
      ))),
    );
  }
}
