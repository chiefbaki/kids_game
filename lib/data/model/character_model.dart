import 'dart:ui';

import 'package:kids_game/core/consts/app_colors.dart';
import 'package:kids_game/resources/resources.dart';

class CharacterModel {
  String nameOfCharacter;
  String photoOfCharacter;
  List<Color> colorOfCard;
  bool positionRight;
  String photoOfCharacteForProfile;
  CharacterModel(
      {required this.colorOfCard,
      required this.nameOfCharacter,
      required this.photoOfCharacter,
      this.positionRight = true,
      required this.photoOfCharacteForProfile});
}

class CharacterModelList {
  static List<CharacterModel> modelList = [
    CharacterModel(
        colorOfCard: AppColors.characterCardColor1,
        nameOfCharacter: "АКТАН",
        photoOfCharacter: Images.chacterAktan,
        photoOfCharacteForProfile: Images.boy
    )
        ,
    CharacterModel(
        colorOfCard: AppColors.characterCardColor2,
        nameOfCharacter: "АКЫЛАЙ",
        photoOfCharacter: Images.akylai,
        photoOfCharacteForProfile: Images.akylaiprofilephoto,
        positionRight: false),
        
    CharacterModel(
        colorOfCard: AppColors.characterCardColor3,
        nameOfCharacter: "САМАТ",
        photoOfCharacteForProfile: Images.samatprofilephoto,
        photoOfCharacter: Images.samat),
    CharacterModel(
        colorOfCard: AppColors.characterCardColor4,
        nameOfCharacter: "МЭЭРИМ",
        photoOfCharacter: Images.meerim,
        photoOfCharacteForProfile: Images.meerimprofilephoto,
        positionRight: false),
  ];
}
