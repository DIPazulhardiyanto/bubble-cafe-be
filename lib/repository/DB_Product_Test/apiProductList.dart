import 'package:todosapp/model/response/productResponse.dart';
import 'package:todosapp/repository/api_repository.dart';

class ApiProductListDbRepos {
  final ApiRepository _apiRepository = ApiRepository();

  Future<ProductResponse> getProductList() =>
      _apiRepository.tesGetProductList();
}
