class ListItemModel {
  final String id;
  final String title;
  bool completed = false;

  ListItemModel({
    required this.id,
    required this.title,
    required this.completed,
  });

  ListItemModel.fromJSON(json)
      : id = json['id'].toString(),
        title = json['title'].toString(),
        completed = json['completed'];
}
