import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todosapp/appInjection/appInjection.dart';
import 'package:todosapp/model/response/productResponse.dart';
import 'package:todosapp/repository/api_repository.dart';
import '../../bloc/bloc.dart';

class ProductCubit extends Cubit<ApiResultState<List<ProductResponse>>> {
  ApiRepository apiRepo = AppInjector.get<ApiRepository>();

  ProductCubit() : super(ApiResultState.idle());
  fetchProductList() async {
    emit(ApiResultState.loading());
    var apiResult = await apiRepo.fetchProductList();
    print('TEST >>> $apiResult');
  }

}

