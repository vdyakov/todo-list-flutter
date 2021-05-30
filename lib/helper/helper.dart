import 'dart:math';
import 'package:todo_list_flutter/data/model/list_item_model.dart';

class Helper {
  static String generateId() {
    Random random = new Random();

    return 'f${random.nextInt(1000000)}';
  }

  static RowModel generateRow(title) =>
      new RowModel(id: generateId(), title: title, completed: false);
}
