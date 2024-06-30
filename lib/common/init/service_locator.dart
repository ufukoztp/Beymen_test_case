// ignore_for_file: cascade_invocations

import 'package:beymen_test_case/common/network/http_client_manager/network_client.dart';
import 'package:beymen_test_case/features/my_product_list/data/services/local/my_product_list_local_service.dart';
import 'package:beymen_test_case/features/my_product_list/presentation/cubit/my_product_list_cubit.dart';
import 'package:beymen_test_case/features/product_list/cubit/network_product_list_cubit.dart';
import 'package:beymen_test_case/features/product_list/data/repositories/product_list_repository.dart';
import 'package:beymen_test_case/features/product_list/data/services/product_list_service.dart';
import 'package:beymen_test_case/features/product_list/domain/repositories/i_product_list_repository.dart';
import 'package:beymen_test_case/features/product_list/domain/services/i_product_list_service.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final _serviceLocator = GetIt.instance;

Future<void> initalize() async {
  //network
  _serviceLocator.registerSingleton<Dio>(
    Dio(
      BaseOptions(
        baseUrl: "https://dummyjson.com",
        contentType: 'application/json',
        receiveDataWhenStatusError: true,
        connectTimeout: const Duration(minutes: 1),
        receiveTimeout: const Duration(minutes: 1),
      ),
    ),
  );

  _serviceLocator.registerLazySingleton<NetworkClient>(
    () => NetworkClient(
      _serviceLocator<Dio>(),
    ),
  );

  //Network Product List
  _serviceLocator
    ..registerLazySingleton<IProductListService>(
        () => ProductListService(_serviceLocator<NetworkClient>()))
    ..registerLazySingleton<IProductListRepository>(
        () => ProductListRepository(_serviceLocator<IProductListService>()))
    ..registerLazySingleton<NetworkProductListCubit>(() =>
        NetworkProductListCubit(_serviceLocator<IProductListRepository>()));

  //My Product List
  _serviceLocator
    ..registerLazySingleton<MyProductListLocalService>(
        () => MyProductListLocalService())
    ..registerLazySingleton<MyProductListCubit>(
        () => MyProductListCubit(_serviceLocator<MyProductListLocalService>()));

  await _initializeOtherDependencies();
}

Future<void> _initializeOtherDependencies() async {
  await _serviceLocator<NetworkProductListCubit>().initialize();
}

GetIt get getServiceLocator {
  return _serviceLocator;
}

T provide<T extends Object>() {
  return _serviceLocator<T>();
}
