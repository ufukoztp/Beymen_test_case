part of 'my_product_list_cubit.dart';


@Freezed(equal:false )
class MyProductListState with _$MyProductListState{
  const factory MyProductListState.initial() = _Initial;
  const factory MyProductListState.loading() = _Loading;
  const factory MyProductListState.empty() = _Empty;
  const factory MyProductListState.success() = _Success;
  const factory MyProductListState.failure(AppException exception) = _Failure;

}


