import 'package:kids_game/data/model/story_id_model.dart';

abstract class StoryIdState {}

class StoryIdInititalState extends StoryIdState {}

class StoryIdLoadingState extends StoryIdState {}

class StoryIdSuccessState extends StoryIdState {
  final StoryIdModel model;
  StoryIdSuccessState({required this.model});
}

class StoryIdErrorState extends StoryIdState {
  final String error;
  StoryIdErrorState({required this.error});
}
