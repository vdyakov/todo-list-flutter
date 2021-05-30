import 'package:dio/dio.dart';
import 'package:todo_list_flutter/data/mapper/api_mapper.dart';
import 'package:todo_list_flutter/data/model/list_item_model.dart';

class ApiService {
  static const _BASE_URL = 'https://jsonplaceholder.typicode.com';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _BASE_URL),
  );

  Future<List<ListItemModel>> getTodos() async {
    final response = await _dio.get('/users/1/todos');

    return ApiMapper.getTodoListFormApi(response.data.toList());
  }
}
