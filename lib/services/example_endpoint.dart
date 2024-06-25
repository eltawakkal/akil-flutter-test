import 'package:akil_flutter_test/models/example_data_response.dart';
import 'package:dio/dio.dart';

class ExampleEndpoint {

  static Dio dio = Dio(BaseOptions(
      baseUrl: 'https://reqres.in/api',
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 15),
      receiveTimeout: Duration(seconds: 15)
  ));

  static getUsers(int page) async {
    var response = await dio.get('/users?page=$page');
    return ExampleDataResponse.fromJson(response.data);
  }

}