import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_list_flutter/data/model/list_item_model.dart';
import 'package:todo_list_flutter/presentation/todo_item/todo_item.dart';

class TodoList extends StatelessWidget {
  final List<ListItemModel> todoList;
  final Function(String) handleRemoveItem;
  final Function(String) handleCheckItem;

  TodoList({
    required this.todoList,
    required this.handleRemoveItem,
    required this.handleCheckItem,
  });

  @override
  Widget build(BuildContext context) {
    final TextStyle textStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 20);

    // sort by not completed items
    this.todoList.sort((a, b) => !b.completed ? 1 : -1);

    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        child: SizedBox(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Todo List',
                  overflow: TextOverflow.ellipsis,
                  style: textStyle,
                ),
                ...this.todoList.isEmpty
                    ? [Text('No Data to display')]
                    : this.todoList.map((ListItemModel item) => TodoItem(
                          todoItem: item,
                          handleCheckItem: this.handleCheckItem,
                          handleRemoveItem: this.handleRemoveItem,
                        )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
