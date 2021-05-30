import 'package:flutter/material.dart';

class AddForm extends StatelessWidget {
  final Function(String) addToDo;

  final _todoController = TextEditingController();

  AddForm({required this.addToDo});

  @protected
  String getTodoTitle() {
    final title = _todoController.text.toString();

    _todoController.clear();

    return title;
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      fixedSize: Size(30, 20),
    );

    return Card(
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        child: SizedBox(
          height: 100,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _todoController,
                    decoration: InputDecoration(
                      hintText: 'What do you want to do?',
                    ),
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 60,
                  child: ElevatedButton(
                    style: buttonStyle,
                    onPressed: () => this.addToDo(this.getTodoTitle()),
                    child: Text('ADD'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
