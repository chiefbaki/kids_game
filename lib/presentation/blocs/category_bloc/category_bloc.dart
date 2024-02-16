import 'package:bloc/bloc.dart';
import 'package:kids_game/data/model/category_model.dart';
import 'package:kids_game/domain/repositories/get_category_repository.dart';


part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  CategoryBloc({required this.repository}) : super(CategoryInitial()) {
    on<GetListCategories>((event, emit) async {
      emit(CategoryLoading());
      try {
        final List<CategoryModel> result = await repository.getCategories();
        print(result);
        emit(CategorySuccess(model: result));
      } catch (e) {
        emit(CategoryError(errorText: e.toString()));
      }
    });
  }
  final GetCategoryRepository repository;
}