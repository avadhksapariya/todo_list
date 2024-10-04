import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_list/models/model_todo.dart';

class TodoCubit extends Cubit<List<ModelTodo>> {
  TodoCubit() : super([]);
}
