class ModelTodo {
  final String name;
  final DateTime createdAt;

  ModelTodo({required this.name, required this.createdAt});

  @override
  String toString() => 'Todo(name: $name, createdAt: $createdAt)';
}
