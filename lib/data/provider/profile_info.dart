import 'package:flutter/foundation.dart';
import 'package:kids_game/data/model/character_model.dart';

class CharacterInfoProvider extends ChangeNotifier{
    CharacterModel?  model;
    void changeProfile(CharacterModel model1){
      model = model1;
      notifyListeners();
    }
}