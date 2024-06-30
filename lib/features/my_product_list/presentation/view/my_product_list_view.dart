import 'package:beymen_test_case/common/widgets/barcode_scanner/barcode_scanner.dart';
import 'package:beymen_test_case/common/widgets/buttons/app_primary_button.dart';
import 'package:beymen_test_case/common/widgets/empty_widget/empty_widget.dart';
import 'package:beymen_test_case/common/widgets/extended_image/app_extended_image.dart';
import 'package:beymen_test_case/common/widgets/extended_image/data/extended_image_type.dart';
import 'package:beymen_test_case/core/extensions/sized_box_exxtension.dart';
import 'package:beymen_test_case/features/my_product_list/domain/entities/product_local_db_entity.dart';
import 'package:beymen_test_case/features/my_product_list/presentation/cubit/my_product_list_cubit.dart';
import 'package:beymen_test_case/features/my_product_list/presentation/mixin/my_product_list_mixin.dart';
import 'package:beymen_test_case/features/my_product_list/presentation/widgets/product_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyProductListView extends StatefulWidget {
  const MyProductListView({super.key});

  @override
  State<MyProductListView> createState() => _MyProductListViewState();
}

class _MyProductListViewState extends State<MyProductListView>
    with MyProductListMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar,
      body: BlocBuilder<MyProductListCubit, MyProductListState>(
          builder: (context, state) {
        return state.maybeWhen(
            success: () => _buildSuccessBody,
            empty: () => _buildEmptyBody,
            orElse: () => const Center(
                  child: CircularProgressIndicator(),
                ));
      }),
      bottomNavigationBar: _buildAddProductButton,
    );
  }

  ListView get _buildSuccessBody {
    myLocalProducts = cubit.productListResponse!;
    return ListView.separated(
      itemBuilder: (context, index) {
        return ProductCard(product: myLocalProducts.products![index],);
      },
      separatorBuilder: (BuildContext context, int index) {
        return 24.sbxh;
      },
      itemCount: myLocalProducts.products?.length ?? 0,
    );
  }

  AppBar get _buildAppBar {
    return AppBar(
      centerTitle: true,
      title: Text('Ürünlerim'),
    );
  }

  SafeArea get _buildEmptyBody {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            EmptyWidget(),
            120.sbxh,
          ],
        ),
      ),
    );
  }

  Padding get _buildAddProductButton {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 24.0),
      child: SafeArea(
        child: AppPrimaryButton(
          text: "Ürün Ekle",
          onPressed: () async {
            await barcodeScan();
          },
        ),
      ),
    );
  }
}
