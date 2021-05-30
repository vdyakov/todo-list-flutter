import 'package:flutter/material.dart';
import 'package:todo_list_flutter/presentation/home_page/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        primaryColor: Colors.indigo,
      ),
      home: HomePage(),
    );
  }
}
