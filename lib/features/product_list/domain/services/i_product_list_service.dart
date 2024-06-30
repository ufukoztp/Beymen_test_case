import 'package:beymen_test_case/common/base/model/base_result.dart';
import 'package:beymen_test_case/features/my_product_list/data/models/response/product_list_response.dart';
import 'package:beymen_test_case/features/my_product_list/domain/entities/product_local_db_entity.dart';

abstract class IProductListService{
  Future<Result<ProductLocalDbEntity,AppException>> fetchProductList();

}
