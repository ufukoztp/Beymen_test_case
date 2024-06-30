import 'package:beymen_test_case/common/widgets/extended_image/app_extended_image.dart';
import 'package:beymen_test_case/common/widgets/extended_image/data/extended_image_type.dart';
import 'package:beymen_test_case/core/extensions/sized_box_exxtension.dart';
import 'package:beymen_test_case/features/my_product_list/domain/entities/product_local_db_entity.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.product});

  final ProductsBean product;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(color: Colors.black12, offset: Offset(2, -2), blurRadius: 10)
      ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppExtendedImage(
              imageTypeEnum: ExtendedImageType.Network,
              context: context,
              imageUrl: product.thumbnail,
            ),
            _buildTitleStock,
            Text(
              product.brand ?? '',
            ),
            24.sbxh,
            Text(product.category ?? ''),
            24.sbxh,
            Text(
              product.description ?? '',
              style: const TextStyle(color: Colors.grey),
            ),
            24.sbxh,
            _buildPriceRating,
          ],
        ),
      ),
    );
  }

  Row get _buildTitleStock {
    return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                product.title ?? '',
                style: const TextStyle(fontWeight: FontWeight.w800),
              ),
              Text(
                product.availabilityStatus ?? '',
                style: const TextStyle(fontWeight: FontWeight.w200),
              ),
            ],
          );
  }

  Row get _buildPriceRating {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Chip(
          backgroundColor: Colors.white,
          label: Text("${product.price.toString()} ₺"),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(100))),
        ),
        Row(
          children: [
            const Icon(Icons.star),
            8.sbxw,
            Text(product.rating.toString()),
          ],
        ),
      ],
    );
  }
}
