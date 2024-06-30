import 'package:beymen_test_case/common/init/service_locator_provider.dart';
import 'package:beymen_test_case/common/widgets/barcode_scanner/barcode_scanner.dart';
import 'package:beymen_test_case/common/widgets/bottom_sheets/bottom_sheet/app_bottom_sheet.dart';
import 'package:beymen_test_case/common/widgets/bottom_sheets/error_bottom_sheet/error_bottom_sheet_widget.dart';
import 'package:beymen_test_case/common/widgets/bottom_sheets/success_bottom_sheet/success_bottom_sheet.dart';
import 'package:beymen_test_case/core/constants/cache/cache_constants.dart';
import 'package:beymen_test_case/features/my_product_list/data/services/local/my_product_list_local_service.dart';
import 'package:beymen_test_case/features/my_product_list/domain/entities/product_local_db_entity.dart';
import 'package:beymen_test_case/features/my_product_list/domain/repositories/i_my_product_list_repository.dart';
import 'package:beymen_test_case/features/my_product_list/domain/services/local/i_my_product_list_local_service.dart';
import 'package:beymen_test_case/features/my_product_list/presentation/cubit/my_product_list_cubit.dart';
import 'package:beymen_test_case/features/my_product_list/presentation/view/my_product_list_view.dart';
import 'package:beymen_test_case/features/product_list/cubit/network_product_list_cubit.dart';
import 'package:flutter/material.dart';

mixin MyProductListMixin on State<MyProductListView> {
  ProductLocalDbEntity myLocalProducts = ProductLocalDbEntity(products: []);
  late MyProductListCubit cubit;
  late NetworkProductListCubit _networkProductListCubit;
  String scannedBarcode = "";

  @override
  void initState() {
    // TODO: implement initState
    cubit = ServiceLocatorProvider.provide<MyProductListCubit>();
    _networkProductListCubit =
        ServiceLocatorProvider.provide<NetworkProductListCubit>();
    getMyProductList();
    super.initState();
  }

  getMyProductList() async {
    await cubit.getMyProducts();
  }

  Future<void> barcodeScan() async {
    scannedBarcode = await BarcodeScanner.scan();
    await _findProduct(itemId: scannedBarcode);
  }

  Future<void> _findProduct({required String itemId}) async {
    final scannedProduct = _networkProductListCubit.productList.products
        ?.firstWhere((item) => item.id.toString() == itemId);

    if (scannedProduct != null) {
      myLocalProducts = ProductLocalDbEntity(
          products: myLocalProducts.products!.toList() + [scannedProduct]);
      await _saveMyProductList();
    }
  }

  Future<void> _saveMyProductList() async {
    await cubit.myProductListLocalService
        .put(CacheConstants.myProductList.name, myLocalProducts);
    _emitProduct();
  }

  void _emitProduct() async {
    cubit.productListResponse = myLocalProducts;
    cubit.emit(const MyProductListState.loading());
    cubit.emit(const MyProductListState.success());
    await AppBottomSheet.show(
        child: (context) => const SuccessBottomSheetWidget(
              headerMessage: "Ürününüz listenize eklendi",
            ),
        context: context);
  }
}
