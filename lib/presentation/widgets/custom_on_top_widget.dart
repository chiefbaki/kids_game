import 'package:flutter/material.dart';
import 'package:kids_game/core/consts/app_fonts.dart';
import 'package:kids_game/resources/resources.dart';
import 'package:kids_game/resources/svg_pictures.dart';

class CustomTopWidget extends StatelessWidget {
  const CustomTopWidget(
      {super.key, required this.profileName, required this.profilePhoto});
  final String profileName;
  final String profilePhoto;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Image.asset(
              Images.close,
              height: 37,
              width: 37,
            ),
            iconSize: 37,
            alignment: Alignment.center,
          ),
          Text(
            profileName,
            style: AppFonts.s40w600.copyWith(shadows: [
              Shadow(
                  blurRadius: 4,
                  color: Colors.black.withOpacity(0.35),
                  offset: const Offset(0, 4))
            ]),
          ),
          CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage(profilePhoto))
        ],
      ),
    );
  }
}
