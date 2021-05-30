import 'package:todo_list_flutter/data/api_util.dart';
import 'package:todo_list_flutter/data/service/api_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil? apiUtil() {
    if (_apiUtil == null) {
      _apiUtil = ApiUtil(ApiService());
    }

    return _apiUtil;
  }
}
