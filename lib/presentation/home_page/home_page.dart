import 'package:flutter/material.dart';
import 'package:todo_list_flutter/helper/helper.dart';
import 'package:todo_list_flutter/data/model/list_item_model.dart';
import 'package:todo_list_flutter/presentation/add_form/add_form.dart';
import 'package:todo_list_flutter/presentation/navigation/navigation.dart';
import 'package:todo_list_flutter/presentation/todo_list/todo_list.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // ToDo: реализовать загрузку данных с АПИ
  List<RowModel> _data = [
    Helper.generateRow('Test'),
    Helper.generateRow('Test1'),
    Helper.generateRow('Test2'),
    Helper.generateRow('Test3'),
  ];

  void handleAddToDo(String title) {
    if (title.isNotEmpty) {
      setState(() {
        this._data = [...this._data, Helper.generateRow(title)];
      });
    }
  }

  void handleRemoveItem(String itemId) {
    setState(() {
      this._data = this._data.where((RowModel item) => item.id != itemId).toList();
    });
  }

  void handleCheckItem(String itemId) {
    setState(() {
      this._data = this._data.map((item) {
        if (item.id == itemId) {
          item.completed = true;
        }

        return item;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: CustomAppBar(title: 'Todo List Flutter'),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: ListView(
            children: [
              AddForm(
                addToDo: this.handleAddToDo,
              ),
              TodoList(
                todoList: this._data,
                handleCheckItem: this.handleCheckItem,
                handleRemoveItem: this.handleRemoveItem,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
