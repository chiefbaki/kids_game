abstract class AudioEvent {}

class GetAudioEvent extends AudioEvent {
  final String text;
  GetAudioEvent({required this.text});
}
