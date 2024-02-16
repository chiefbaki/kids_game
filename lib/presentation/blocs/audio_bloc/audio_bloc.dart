import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kids_game/domain/repositories/get_audio_repository.dart';
import 'package:kids_game/presentation/blocs/audio_bloc/audio_event.dart';
import 'package:kids_game/presentation/blocs/audio_bloc/audio_state.dart';

class AudioBloc extends Bloc<AudioEvent, AudioState> {
  AudioBloc({required this.repository}) : super(AudioinitialState()) {
    on<GetAudioEvent>((event, emit) async {
      emit(AudioLoadingState());
      try {
        await repository.getAudio();
        
        emit(AudioSuccessState());
      } catch (e) {
        emit(AudioErrorState(error: e.toString()));
      }
    });
  }
  AudioRepository repository;
}
