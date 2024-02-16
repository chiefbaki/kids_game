import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_fonts.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(
      {super.key,
      required this.name,
      required this.photo,
      this.positionRight = true,
      required this.colors});
  final String name;
  final String photo;
  final bool positionRight;
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: LinearGradient(
                  colors: colors,
                  begin:
                      positionRight ? Alignment.topRight : Alignment.bottomLeft,
                  end: positionRight
                      ? Alignment.bottomLeft
                      : Alignment.topRight)),
          height: 150,
          width: 350,
        ),
        Positioned(
            top: positionRight ? 45 : 50,
            left: positionRight ? 40 : 120,
            child: Text(
              name,
              style: AppFonts.s40w600,
            )),
        Positioned(
            left: positionRight ? 170 : -25,
            top: positionRight ? -10 : -20,
            child: Image.asset(
              photo,
              height: 200,
              width: 200,
            ))
      ]),
    );
  }
}
