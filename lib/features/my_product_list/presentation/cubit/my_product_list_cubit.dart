import 'package:beymen_test_case/common/base/model/base_result.dart';
import 'package:beymen_test_case/core/constants/cache/cache_constants.dart';
import 'package:beymen_test_case/features/my_product_list/data/models/response/product_list_response.dart';
import 'package:beymen_test_case/features/my_product_list/domain/entities/product_local_db_entity.dart';
import 'package:beymen_test_case/features/my_product_list/domain/services/local/i_my_product_list_local_service.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'my_product_list_state.dart';
part 'my_product_list_cubit.freezed.dart';

class MyProductListCubit extends Cubit<MyProductListState> {
  MyProductListCubit(this.myProductListLocalService) : super(const MyProductListState.initial());
  late IMyProductListLocalService myProductListLocalService;
  late ProductLocalDbEntity? productListResponse;
  
  Future<void> getMyProducts()async{
   productListResponse = await myProductListLocalService.get(CacheConstants.myProductList.name);
   if(productListResponse==null||productListResponse?.products?.length==0){
     emit(const MyProductListState.empty());
   } else {
     emit(const MyProductListState.success());
   }
  }
  
}
