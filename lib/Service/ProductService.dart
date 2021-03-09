import 'package:todosapp/model/product.dart';
import 'package:dio/dio.dart';
import 'dart:convert';


class ProductService {
  final String _endpoint = "http://192.168.20.232:8000/auth";
  final Dio _dio = Dio();

  Future<List<Product>> getProductList() async {
    // String _EndPointList = "$_endpoint/product";
    String _productEnd = "$_endpoint/product?page=1&size=5&names=&descending=true";
    try {
      Response response = await _dio.get(_productEnd);
      Iterable productList = json.decode(response.body);
      List<User> products = productList.map((product) =>
          Product.fromJson(product)).toList();
      return products
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return error;
    }
  }

}