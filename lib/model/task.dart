class Task {
  static int counter = 1;
  final int id;
  final String name;
  final bool completed;
  Task({required this.name, this.completed = false}) : id = counter++;

  Task copyWith({int? id, String? name, bool? isComplete}) {
    return Task(
      name: name ?? this.name,
      completed: isComplete ?? this.completed,
    );
  }
}
