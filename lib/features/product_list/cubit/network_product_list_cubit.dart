import 'package:beymen_test_case/common/base/model/base_result.dart';
import 'package:beymen_test_case/common/init/service_locator_provider.dart';
import 'package:beymen_test_case/core/extensions/null_check_extension.dart';
import 'package:beymen_test_case/features/my_product_list/data/models/response/product_list_response.dart';
import 'package:beymen_test_case/features/my_product_list/domain/entities/product_local_db_entity.dart';
import 'package:beymen_test_case/features/product_list/domain/repositories/i_product_list_repository.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


class NetworkProductListCubit extends Cubit<ProductListResponse> {
  NetworkProductListCubit(this._repository) : super(const ProductListResponse());
  IProductListRepository _repository;
  late ProductLocalDbEntity productList;

  Future<void> initialize()async{
    await fetchProductList();
  }

  Future<void> fetchProductList()async{
    final result = await _repository.fetchProductList();

    final value = switch (result) {
      Success(value: final ProductLocalDbEntity _response) => {
       productList = _response,
      },
      Failure(exception: final AppException exception) => {

      }
    };
  }

}

NetworkProductListCubit networkProductListCubit = ServiceLocatorProvider.provide<NetworkProductListCubit>();
