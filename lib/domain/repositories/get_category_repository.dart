import 'package:dio/dio.dart';
import 'package:kids_game/data/model/category_model.dart';

class GetCategoryRepository {
  Dio dio;
  GetCategoryRepository({required this.dio});
  Future<List<CategoryModel>> getCategories() async {
    final Response response = await dio.get("/api/word/category/");
    List<dynamic> result = response.data;

    return result.map((e) => CategoryModel.fromJson(e)).toList();
  }
}
