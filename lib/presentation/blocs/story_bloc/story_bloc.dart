import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/data/model/story_model.dart';
import 'package:kids_game/domain/repositories/get_story_repository.dart';
import 'package:kids_game/presentation/blocs/story_bloc/story_event.dart';
import 'package:kids_game/presentation/blocs/story_bloc/story_state.dart';

class StoryBloc extends Bloc<StoryEvent, StoryState> {
  StoryBloc({required this.repository}) : super(StoryInitialState()) {
    on<GetStoryEvent>((event, emit) async {
      emit(StoryLoadingState());
      try {
        List<StoryModel> listModel = await repository.getStoryModel();
        emit(StorySuccessState(storyModelList: listModel));
      } catch (e) {
        emit(StoryErrorState(error: e.toString()));
      }
    });
  }
  final StoryRepository repository;
}
