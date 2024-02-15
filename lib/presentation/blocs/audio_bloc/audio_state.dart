abstract class AudioState{}

class AudioinitialState extends AudioState{}

class AudioLoadingState extends AudioState{}

class AudioSuccessState extends AudioState{
  
  AudioSuccessState();
}

class AudioErrorState extends AudioState{
  final String error;
  AudioErrorState({required this.error});
}