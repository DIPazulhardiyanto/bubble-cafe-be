import 'package:dio/dio.dart';
import 'dart:convert';
import '../model/product.dart';


class ProductService {
  final String _endpoint = "http://192.168.20.232:8000/auth";
  final Dio _dio = Dio();

  Future<List<Product>> getProductListTest() async {
    // String _EndPointList = "$_endpoint/product";
    String _productEnd = "$_endpoint/product?page=1&size=5&names=&descending=true";
    try {
      final response = await _dio.get(_productEnd);
      print("Response: $response");
      // Iterable productList = json.decode(response);
      // List<Product> products = productList.map((product) =>
      //     Product.fromJson(product)).toList();
      // return products;
    } catch (error, stacktrace) {
      print("Exception occured: $error stackTrace: $stacktrace");
      return error;
    }
  }

}