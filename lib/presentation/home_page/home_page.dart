import 'package:flutter/material.dart';
import 'package:todo_list_flutter/helper/helper.dart';
import 'package:todo_list_flutter/data/model/list_item_model.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {},
        ),
        title: Text(widget.title),
      ),
      body: _getBody(),
    );
  }

  // ToDo: вынести в отдельный класс
  @protected
  Widget _getBody() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            Card(
              child: InkWell(
                splashColor: Colors.blue.withAlpha(30),
                child: SizedBox(
                  height: 100,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: _getRowInput(),
                  ),
                ),
              ),
            ),
            ...List.generate(_data.length, (index) {
              return Card(
                child: ListTile(
                  leading: FlutterLogo(),
                  title: Text(_data[index].title.toString()),
                  trailing: Icon(Icons.more_vert),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }

  // ToDo: вынести в отдельный класс
  Widget _getRowInput() {
    final ButtonStyle buttonStyle =
        ElevatedButton.styleFrom(fixedSize: Size(30, 20));

    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: null,
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
            onPressed: () {},
            child: Text('ADD'),
          ),
        ),
      ],
    );
  }
}
