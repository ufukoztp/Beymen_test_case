import 'package:beymen_test_case/common/base/model/base_result.dart';
import 'package:beymen_test_case/common/network/http_client_manager/network_client.dart';
import 'package:beymen_test_case/core/constants/network/http_call_type.dart';
import 'package:beymen_test_case/core/constants/network/http_end_points.dart';
import 'package:beymen_test_case/features/my_product_list/data/models/response/product_list_response.dart';
import 'package:beymen_test_case/features/my_product_list/domain/entities/product_local_db_entity.dart';
import 'package:beymen_test_case/features/product_list/domain/services/i_product_list_service.dart';

class ProductListService implements IProductListService{
  ProductListService(this._client);
  NetworkClient _client;
  @override
  Future<Result<ProductLocalDbEntity, AppException>> fetchProductList() async {
    return await _client.call(
      path: HttpClientEndPoints.productList.url,
      callType: HttpCallType.GET,
      mapper: (json) {
       return ProductLocalDbEntity.fromJson(json);
      },
    );
  }
}
