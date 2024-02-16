import 'package:kids_game/data/model/story_model.dart';

abstract class StoryState {}

class StoryInitialState extends StoryState {}

class StoryLoadingState extends StoryState {}

class StorySuccessState extends StoryState {
  final List<StoryModel> storyModelList;
  StorySuccessState({required this.storyModelList});
}

class StoryErrorState extends StoryState {
  final String error;
  StoryErrorState({required this.error});
}
