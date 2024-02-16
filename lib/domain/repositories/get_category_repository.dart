import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kids_game/data/model/category_model.dart';

class GetCategoryRepository {
  final Dio dio;
  GetCategoryRepository({required this.dio});
  Future<List<CategoryModel>> getCategories() async {
    final Response response = await dio.get("https://4931-217-29-26-50.ngrok-free.app/api/word/category/");
    List<dynamic> result = response.data;
    debugPrint(response.data);
    return result.map((e) => CategoryModel.fromJson(e)).toList();
  }
}
