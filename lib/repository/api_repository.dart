import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import '../model/response/productResponse.dart';
import '../network/network_state/result/api_result.dart';
import '../network/api_client/dio_client.dart';
import '../network/network_state/error/network_exceptions.dart';

class ApiRepository {
  DioClient dioClient;
  final String _endpoint = "http://192.168.20.232:8000/auth";

  ApiRepository(){
    var dio = Dio();
    dioClient = DioClient(_endpoint, dio);
  }

  Future<ApiResult<ProductResponse>> fetchProductList() async {
    try {
      var productResponse = ProductResponse.fromJson(await dioClient.get(
        "/product",
        queryParameters: {
          "page": 1,
          "size": 5,
          "names": "",
          "descending": true
        }
      ));
      print('check >> $productResponse');
      return ApiResult.success(data: productResponse);
    } catch (e) {
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }


  //TestRepos
  Future<ProductResponse> tesGetProductList() async {
    try {
      final response = await dioClient.get(
          "/product",
          queryParameters: {
            "page": 1,
            "size": 5,
            "names": "",
            "descending": true
          }
      );
      return ProductResponse.fromJson(response);
    } catch (e) {
      return ProductResponse.withError(e);
    }
  }
}
