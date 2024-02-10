import 'package:kids_game/resources/resources.dart';

class StoryModel {
  final String img;
  final String title;
  StoryModel({required this.img, required this.title});
}

class StoryModelList {
  static List<StoryModel> models = [
    StoryModel(img: Images.rectangle12, title: "АПЕНДИ ЖАНА ЭШЕК"),
    StoryModel(img: Images.chicken, title: "МАНСАПКОР КҮЧҮК"),
    StoryModel(img: Images.body, title: "Аяз ата")
  ];
}
