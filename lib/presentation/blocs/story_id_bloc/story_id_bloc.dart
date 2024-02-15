import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/data/model/story_id_model.dart';
import 'package:kids_game/domain/repositories/get_story_id_repository.dart';
import 'package:kids_game/presentation/blocs/story_id_bloc/story_id_event.dart';
import 'package:kids_game/presentation/blocs/story_id_bloc/story_id_state.dart';

class StoryIdBloc extends Bloc<StoryIdEvent, StoryIdState> {
  StoryIdBloc({required this.repository}) : super(StoryIdInititalState()) {
    on<GetStoryIdEvent>((event, emit) async{
      emit(StoryIdLoadingState());
      try {
        StoryIdModel model = await repository.getStoryidModel(id: event.id);
        emit(StoryIdSuccessState(model: model));
      } catch (e) {
        emit(StoryIdErrorState(error: e.toString()));
      }
    });
  }
  StoryIdRepository repository;
}