import 'package:dio/dio.dart';
import 'package:kids_game/data/model/story_model.dart';

class StoryRepository {
  final Dio dio;
  StoryRepository({required this.dio});
  Future<List<StoryModel>> getStoryModel() async {
    final Response response = await dio
        .get("https://0d42-178-217-168-50.ngrok-free.app/api/story/");
    List<dynamic> list = response.data;
    return list.map((e) => StoryModel.fromJson(e)).toList();
  }
}