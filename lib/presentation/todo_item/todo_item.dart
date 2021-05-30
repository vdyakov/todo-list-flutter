import 'package:flutter/material.dart';
import 'package:todo_list_flutter/data/model/list_item_model.dart';

class TodoItem extends StatelessWidget {
  final RowModel todoItem;
  final Function(String) handleRemoveItem;
  final Function(String) handleCheckItem;

  TodoItem({
    required this.todoItem,
    required this.handleRemoveItem,
    required this.handleCheckItem,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _getCheckIcon(this.todoItem),
        Expanded(
          child: Text(this.todoItem.title.toString()),
        ),
        IconButton(
          icon: const Icon(Icons.delete),
          iconSize: 18,
          color: Colors.black54,
          onPressed: () => showDialog<String>(
            context: context,
            builder: (BuildContext context) => _getConfirmAlert(context),
          ),
        ),
      ],
    );
  }

  @protected
  Widget _getCheckIcon(RowModel model) {
    return !model.completed
        ? IconButton(
            icon: const Icon(Icons.circle_outlined),
            iconSize: 18,
            color: Colors.indigo.shade600,
            onPressed: () => this.handleCheckItem(model.id),
          )
        : IconButton(
            icon: const Icon(Icons.check_circle),
            iconSize: 18,
            disabledColor: Colors.indigo.shade100,
            onPressed: null,
          );
  }

  @protected
  Widget _getConfirmAlert(BuildContext context) {
    return AlertDialog(
      title: const Text('Alert'),
      content: const Text('Are you sure you want to remove this item?'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            this.handleRemoveItem(this.todoItem.id);
            Navigator.pop(context, 'OK');
          },
          child: const Text('OK'),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, 'Cancel'),
          child: const Text('Cancel'),
        ),
      ],
    );
  }
}
