part of 'category_bloc.dart';

@immutable
sealed class CategoryEvent {}

class GetListCategories extends CategoryEvent {}
