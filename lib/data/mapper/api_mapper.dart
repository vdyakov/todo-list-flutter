import 'package:todo_list_flutter/data/model/list_item_model.dart';

class ApiMapper {
  static List<ListItemModel> getTodoListFormApi(todos) {
    return List<ListItemModel>.from(
        todos.map((todo) => ListItemModel.fromJSON(todo)));
  }
}
