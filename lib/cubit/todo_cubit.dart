import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/models/model_todo.dart';

class TodoCubit extends Cubit<List<ModelTodo>> {
  TodoCubit() : super([]);

  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title cannot be empty!');
      return;
    } else {
      final todo = ModelTodo(name: title, createdAt: DateTime.now());
      // state.add(todo);
      emit([...state, todo]);
    }
  }

  @override
  void onChange(Change<List<ModelTodo>> change) {
    super.onChange(change);
    print('TodoCubit: $change');
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    print('TodoCubit Error: $error');
  }
}
