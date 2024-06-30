import 'package:beymen_test_case/common/base/model/base_result.dart';
import 'package:beymen_test_case/features/my_product_list/data/models/response/product_list_response.dart';
import 'package:beymen_test_case/features/my_product_list/domain/entities/product_local_db_entity.dart';
import 'package:beymen_test_case/features/product_list/domain/repositories/i_product_list_repository.dart';
import 'package:beymen_test_case/features/product_list/domain/services/i_product_list_service.dart';

class ProductListRepository implements IProductListRepository{
  ProductListRepository(this._service);
  IProductListService _service;
  @override
  Future<Result<ProductLocalDbEntity, AppException>> fetchProductList() async {
    final response = await _service.fetchProductList();
    return switch (response) {
      Success(value: final ProductLocalDbEntity _response) => Success(_response),
      Failure(exception: final exception) => Failure(exception),
    };  }
}
