import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_local_db_entity.freezed.dart';
part 'product_local_db_entity.g.dart';

@freezed
class ProductLocalDbEntity with _$ProductLocalDbEntity {
  const factory ProductLocalDbEntity({
    @JsonKey(name: 'products') List<ProductsBean>? products,
  }) = _ProductLocalDbEntity;

  factory ProductLocalDbEntity.fromJson(Map<String, Object?> json) => _$ProductLocalDbEntityFromJson(json);
}

@freezed
class ProductsBean with _$ProductsBean {
  const factory ProductsBean({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'title') String? title,
    @JsonKey(name: 'description') String? description,
    @JsonKey(name: 'category') String? category,
    @JsonKey(name: 'price') double? price,
    @JsonKey(name: 'discountPercentage') double? discountPercentage,
    @JsonKey(name: 'rating') double? rating,
    @JsonKey(name: 'stock') int? stock,
    @JsonKey(name: 'tags') List<String>? tags,
    @JsonKey(name: 'brand') String? brand,
    @JsonKey(name: 'sku') String? sku,
    @JsonKey(name: 'weight') int? weight,
    @JsonKey(name: 'dimensions') DimensionsBean? dimensions,
    @JsonKey(name: 'warrantyInformation') String? warrantyInformation,
    @JsonKey(name: 'shippingInformation') String? shippingInformation,
    @JsonKey(name: 'availabilityStatus') String? availabilityStatus,
    @JsonKey(name: 'reviews') List<ReviewsBean>? reviews,
    @JsonKey(name: 'returnPolicy') String? returnPolicy,
    @JsonKey(name: 'minimumOrderQuantity') int? minimumOrderQuantity,
    @JsonKey(name: 'meta') MetaBean? meta,
    @JsonKey(name: 'images') List<String>? images,
    @JsonKey(name: 'thumbnail') String? thumbnail,
  }) = _ProductsBean;

  factory ProductsBean.fromJson(Map<String, Object?> json) => _$ProductsBeanFromJson(json);
}

@freezed
class MetaBean with _$MetaBean {
  const factory MetaBean({
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
    @JsonKey(name: 'barcode') String? barcode,
    @JsonKey(name: 'qrCode') String? qrCode,
  }) = _MetaBean;

  factory MetaBean.fromJson(Map<String, Object?> json) => _$MetaBeanFromJson(json);
}

@freezed
class ReviewsBean with _$ReviewsBean {
  const factory ReviewsBean({
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'comment') String? comment,
    @JsonKey(name: 'date') String? date,
    @JsonKey(name: 'reviewerName') String? reviewerName,
    @JsonKey(name: 'reviewerEmail') String? reviewerEmail,
  }) = _ReviewsBean;

  factory ReviewsBean.fromJson(Map<String, Object?> json) => _$ReviewsBeanFromJson(json);
}

@freezed
class DimensionsBean with _$DimensionsBean {
  const factory DimensionsBean({
    @JsonKey(name: 'width') double? width,
    @JsonKey(name: 'height') double? height,
    @JsonKey(name: 'depth') double? depth,
  }) = _DimensionsBean;

  factory DimensionsBean.fromJson(Map<String, Object?> json) => _$DimensionsBeanFromJson(json);
}

