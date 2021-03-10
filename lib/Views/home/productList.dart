import 'package:flutter/material.dart';
import 'package:todosapp/appInjection/appInjection.dart';
import 'package:todosapp/bloc/bloc.dart';
import 'package:todosapp/bloc/product/productCubit.dart';
import 'package:todosapp/model/response/productResponse.dart';
import 'package:todosapp/network/network_state/result_state/result_api_builder.dart';
import '../../network/network_state/network_state.dart';
import '../../network/network_state/result_state/api_result_state.dart';

class ProductListSc extends StatefulWidget {
  @override
  _ProductListScState createState() => _ProductListScState();
}

class _ProductListScState extends State<ProductListSc> {
  var productCubit = AppInjector.get<ProductCubit>();
  var foodImage = 'https://i.ibb.co/qk6PzDy/London-broil.jpg';
  @override
  void initState() {
    super.initState();
  }

  Widget build(BuildContext context) {
    // return Card(
    //     child: Text(
    //       'BLOC Product'
    //     ),
    // );
    return Scaffold(
        body: BlocBuilder<ProductCubit, ApiResultState<List<ProductResponse>>>(
            cubit: productCubit,
            builder: (BuildContext context, ApiResultState<List<ProductResponse>> state) {
              return ResultStateBuilder(
                state: state,
                dataWidget: (value) {
                  return dataWidget(value);
                },
                errorWidget: (error) {
                  return Center(child: Text(error));
                },
                loadingWidget: (isReloading) {
                  return Center(child: CircularProgressIndicator());
                },
              );
            }));
  }

  Widget dataWidget(List<Row> data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 300,
          width: 300,
          child: Card(
            elevation: 1,
            // child: Image.network(foodImage),
            child: <Widget>[
              Container(
                child: Text(data[index].id),
              )
            ],
          ),
        );
      },
    );
  }
}
