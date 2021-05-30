class RowModel {
  final String id;
  String title;
  bool completed = false;

  RowModel({
    required this.id,
    required this.title,
    required this.completed,
  });
}
