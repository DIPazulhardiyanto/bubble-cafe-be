import 'package:todosapp/model/menus.dart';
import 'package:dio/dio.dart';


class MenuApiProvider{
  final String _endpoint = "http://192.168.20.232:8000/auth";
  final Dio _dio = Dio();

  Future<ModelMenu> getProductListTest() async {
    // String _EndPointList = "$_endpoint/product";
    String _productEnd = "$_endpoint/product?page=1&size=5&names=&descending=true";
    try {
      Response response = await _dio.get(_productEnd);
      print("API_RUNNING >>> : $response");

      return ModelMenu.fromJson(response.data);
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return error;
    }
  }
}