import 'package:dio/dio.dart';
import 'package:kids_game/data/model/story_id_model.dart';

class StoryIdRepository {
  final Dio dio;
  StoryIdRepository({required this.dio});

  Future<StoryIdModel> getStoryidModel({required int id}) async {
    final Response response = await dio
        .get("https://3209-178-217-168-50.ngrok-free.app/api/story/$id/");
    return StoryIdModel.fromJson(response.data);
  }
}
