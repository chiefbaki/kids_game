import 'package:dio/dio.dart';
import 'package:kids_game/data/model/story_id_model.dart';

class StoryIdRepository {
  final Dio dio;
  StoryIdRepository({required this.dio});

  Future<StoryIdModel> getStoryidModel({required int id}) async {
    final Response response = await dio
        .get("https://d02d-77-235-29-191.ngrok-free.app/api/story/story/$id");
    return StoryIdModel.fromJson(response.data);
  }
}
