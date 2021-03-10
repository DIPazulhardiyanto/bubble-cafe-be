import 'package:get_it/get_it.dart';
import '../bloc/product/productCubit.dart';
import '../repository/api_repository.dart';

GetIt _injector = GetIt.I;

class AppInjector {
  AppInjector._internal();

  static T get<T>({String instanceName, dynamic param1, dynamic param2}) =>
      _injector<T>(instanceName: instanceName, param1: param1, param2: param2);

  static void create() {
    _initCubits();
    _initRepos();
    _initNotifiers();
    _others();
  }

  static _initRepos() {
    _injector.registerLazySingleton(() => ApiRepository());
  }

  static _initCubits() {
    _injector.registerFactory(() => ProductCubit());
  }

  static void _initNotifiers() {}

  static void _others() {}

  static close() {
    _injector.reset();
  }
}
