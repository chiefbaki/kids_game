import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:kids_game/data/model/category_model.dart';

class GetCategoryRepository {
  final Dio dio;
  GetCategoryRepository({required this.dio});
  Future<List<CategoryModel>> getCategories() async {
    final Response response = await dio.get("https://0d42-178-217-168-50.ngrok-free.app/api/word/category/");
    List<dynamic> result = response.data;
    debugPrint(response.data);
    return result.map((e) => CategoryModel.fromJson(e)).toList();
  }
}
