import 'package:beymen_test_case/core/constants/cache/cache_constants.dart';
import 'package:beymen_test_case/features/my_product_list/data/models/response/product_list_response.dart';
import 'package:beymen_test_case/features/my_product_list/domain/entities/product_local_db_entity.dart';
import 'package:beymen_test_case/features/my_product_list/domain/services/local/i_my_product_list_local_service.dart';
import 'package:hive/hive.dart';


class MyProductListLocalService extends IMyProductListLocalService{
  MyProductListLocalService() {
    initialize();
  }
  @override
  String get boxName => CacheConstants.myProductList.name;

  @override
  void registerAdapters() {
    Hive.registerAdapter(
        CacheConstants.myProductList.name, (json) => ProductLocalDbEntity.fromJson(json));
  }

}
