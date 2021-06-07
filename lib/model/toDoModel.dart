class ToDoModel {
  late int id;
  late String title;
  late bool isCompleted;
  late bool isArchived;

  ToDoModel({
    required this.isArchived,
    required this.isCompleted,
    required this.title,
    required this.id,
  });
}
