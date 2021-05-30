import 'package:todo_list_flutter/data/model/list_item_model.dart';
import 'package:todo_list_flutter/data/service/api_service.dart';

class ApiUtil {
  final ApiService _apiService;

  ApiUtil(this._apiService);

  Future<List<ListItemModel>> getTodos() async {
    return await _apiService.getTodos();
  }
}
