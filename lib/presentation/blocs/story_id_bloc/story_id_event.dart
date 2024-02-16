abstract class StoryIdEvent{}

class GetStoryIdEvent extends StoryIdEvent{
  final int id;
  GetStoryIdEvent({required this.id});
}