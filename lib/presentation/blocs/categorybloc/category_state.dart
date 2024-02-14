part of 'category_bloc.dart';

@immutable
sealed class CategoryState {}

final class CategoryInitial extends CategoryState {}

final class CategoryLoading extends CategoryState {}

final class CategorySuccess extends CategoryState {
  List<CategoryModel> model;
  CategorySuccess({required this.model});
}

final class CategoryError extends CategoryState {
  final String errorText;
  CategoryError({required this.errorText});
}
