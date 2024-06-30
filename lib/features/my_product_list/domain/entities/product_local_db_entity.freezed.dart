// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_local_db_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductLocalDbEntity _$ProductLocalDbEntityFromJson(Map<String, dynamic> json) {
  return _ProductLocalDbEntity.fromJson(json);
}

/// @nodoc
mixin _$ProductLocalDbEntity {
  @JsonKey(name: 'products')
  List<ProductsBean>? get products => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductLocalDbEntityCopyWith<ProductLocalDbEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductLocalDbEntityCopyWith<$Res> {
  factory $ProductLocalDbEntityCopyWith(ProductLocalDbEntity value,
          $Res Function(ProductLocalDbEntity) then) =
      _$ProductLocalDbEntityCopyWithImpl<$Res, ProductLocalDbEntity>;
  @useResult
  $Res call({@JsonKey(name: 'products') List<ProductsBean>? products});
}

/// @nodoc
class _$ProductLocalDbEntityCopyWithImpl<$Res,
        $Val extends ProductLocalDbEntity>
    implements $ProductLocalDbEntityCopyWith<$Res> {
  _$ProductLocalDbEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      products: freezed == products
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductsBean>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductLocalDbEntityImplCopyWith<$Res>
    implements $ProductLocalDbEntityCopyWith<$Res> {
  factory _$$ProductLocalDbEntityImplCopyWith(_$ProductLocalDbEntityImpl value,
          $Res Function(_$ProductLocalDbEntityImpl) then) =
      __$$ProductLocalDbEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'products') List<ProductsBean>? products});
}

/// @nodoc
class __$$ProductLocalDbEntityImplCopyWithImpl<$Res>
    extends _$ProductLocalDbEntityCopyWithImpl<$Res, _$ProductLocalDbEntityImpl>
    implements _$$ProductLocalDbEntityImplCopyWith<$Res> {
  __$$ProductLocalDbEntityImplCopyWithImpl(_$ProductLocalDbEntityImpl _value,
      $Res Function(_$ProductLocalDbEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$ProductLocalDbEntityImpl(
      products: freezed == products
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductsBean>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductLocalDbEntityImpl implements _ProductLocalDbEntity {
  const _$ProductLocalDbEntityImpl(
      {@JsonKey(name: 'products') final List<ProductsBean>? products})
      : _products = products;

  factory _$ProductLocalDbEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductLocalDbEntityImplFromJson(json);

  final List<ProductsBean>? _products;
  @override
  @JsonKey(name: 'products')
  List<ProductsBean>? get products {
    final value = _products;
    if (value == null) return null;
    if (_products is EqualUnmodifiableListView) return _products;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductLocalDbEntity(products: $products)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductLocalDbEntityImpl &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductLocalDbEntityImplCopyWith<_$ProductLocalDbEntityImpl>
      get copyWith =>
          __$$ProductLocalDbEntityImplCopyWithImpl<_$ProductLocalDbEntityImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductLocalDbEntityImplToJson(
      this,
    );
  }
}

abstract class _ProductLocalDbEntity implements ProductLocalDbEntity {
  const factory _ProductLocalDbEntity(
          {@JsonKey(name: 'products') final List<ProductsBean>? products}) =
      _$ProductLocalDbEntityImpl;

  factory _ProductLocalDbEntity.fromJson(Map<String, dynamic> json) =
      _$ProductLocalDbEntityImpl.fromJson;

  @override
  @JsonKey(name: 'products')
  List<ProductsBean>? get products;
  @override
  @JsonKey(ignore: true)
  _$$ProductLocalDbEntityImplCopyWith<_$ProductLocalDbEntityImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductsBean _$ProductsBeanFromJson(Map<String, dynamic> json) {
  return _ProductsBean.fromJson(json);
}

/// @nodoc
mixin _$ProductsBean {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'title')
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'category')
  String? get category => throw _privateConstructorUsedError;
  @JsonKey(name: 'price')
  double? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'discountPercentage')
  double? get discountPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  double? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'stock')
  int? get stock => throw _privateConstructorUsedError;
  @JsonKey(name: 'tags')
  List<String>? get tags => throw _privateConstructorUsedError;
  @JsonKey(name: 'brand')
  String? get brand => throw _privateConstructorUsedError;
  @JsonKey(name: 'sku')
  String? get sku => throw _privateConstructorUsedError;
  @JsonKey(name: 'weight')
  int? get weight => throw _privateConstructorUsedError;
  @JsonKey(name: 'dimensions')
  DimensionsBean? get dimensions => throw _privateConstructorUsedError;
  @JsonKey(name: 'warrantyInformation')
  String? get warrantyInformation => throw _privateConstructorUsedError;
  @JsonKey(name: 'shippingInformation')
  String? get shippingInformation => throw _privateConstructorUsedError;
  @JsonKey(name: 'availabilityStatus')
  String? get availabilityStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviews')
  List<ReviewsBean>? get reviews => throw _privateConstructorUsedError;
  @JsonKey(name: 'returnPolicy')
  String? get returnPolicy => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimumOrderQuantity')
  int? get minimumOrderQuantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta')
  MetaBean? get meta => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<String>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'thumbnail')
  String? get thumbnail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductsBeanCopyWith<ProductsBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsBeanCopyWith<$Res> {
  factory $ProductsBeanCopyWith(
          ProductsBean value, $Res Function(ProductsBean) then) =
      _$ProductsBeanCopyWithImpl<$Res, ProductsBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
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
      @JsonKey(name: 'thumbnail') String? thumbnail});

  $DimensionsBeanCopyWith<$Res>? get dimensions;
  $MetaBeanCopyWith<$Res>? get meta;
}

/// @nodoc
class _$ProductsBeanCopyWithImpl<$Res, $Val extends ProductsBean>
    implements $ProductsBeanCopyWith<$Res> {
  _$ProductsBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? discountPercentage = freezed,
    Object? rating = freezed,
    Object? stock = freezed,
    Object? tags = freezed,
    Object? brand = freezed,
    Object? sku = freezed,
    Object? weight = freezed,
    Object? dimensions = freezed,
    Object? warrantyInformation = freezed,
    Object? shippingInformation = freezed,
    Object? availabilityStatus = freezed,
    Object? reviews = freezed,
    Object? returnPolicy = freezed,
    Object? minimumOrderQuantity = freezed,
    Object? meta = freezed,
    Object? images = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as DimensionsBean?,
      warrantyInformation: freezed == warrantyInformation
          ? _value.warrantyInformation
          : warrantyInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      availabilityStatus: freezed == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewsBean>?,
      returnPolicy: freezed == returnPolicy
          ? _value.returnPolicy
          : returnPolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumOrderQuantity: freezed == minimumOrderQuantity
          ? _value.minimumOrderQuantity
          : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaBean?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DimensionsBeanCopyWith<$Res>? get dimensions {
    if (_value.dimensions == null) {
      return null;
    }

    return $DimensionsBeanCopyWith<$Res>(_value.dimensions!, (value) {
      return _then(_value.copyWith(dimensions: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaBeanCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaBeanCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductsBeanImplCopyWith<$Res>
    implements $ProductsBeanCopyWith<$Res> {
  factory _$$ProductsBeanImplCopyWith(
          _$ProductsBeanImpl value, $Res Function(_$ProductsBeanImpl) then) =
      __$$ProductsBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'id') int? id,
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
      @JsonKey(name: 'thumbnail') String? thumbnail});

  @override
  $DimensionsBeanCopyWith<$Res>? get dimensions;
  @override
  $MetaBeanCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$ProductsBeanImplCopyWithImpl<$Res>
    extends _$ProductsBeanCopyWithImpl<$Res, _$ProductsBeanImpl>
    implements _$$ProductsBeanImplCopyWith<$Res> {
  __$$ProductsBeanImplCopyWithImpl(
      _$ProductsBeanImpl _value, $Res Function(_$ProductsBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? category = freezed,
    Object? price = freezed,
    Object? discountPercentage = freezed,
    Object? rating = freezed,
    Object? stock = freezed,
    Object? tags = freezed,
    Object? brand = freezed,
    Object? sku = freezed,
    Object? weight = freezed,
    Object? dimensions = freezed,
    Object? warrantyInformation = freezed,
    Object? shippingInformation = freezed,
    Object? availabilityStatus = freezed,
    Object? reviews = freezed,
    Object? returnPolicy = freezed,
    Object? minimumOrderQuantity = freezed,
    Object? meta = freezed,
    Object? images = freezed,
    Object? thumbnail = freezed,
  }) {
    return _then(_$ProductsBeanImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      discountPercentage: freezed == discountPercentage
          ? _value.discountPercentage
          : discountPercentage // ignore: cast_nullable_to_non_nullable
              as double?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      stock: freezed == stock
          ? _value.stock
          : stock // ignore: cast_nullable_to_non_nullable
              as int?,
      tags: freezed == tags
          ? _value._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      sku: freezed == sku
          ? _value.sku
          : sku // ignore: cast_nullable_to_non_nullable
              as String?,
      weight: freezed == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int?,
      dimensions: freezed == dimensions
          ? _value.dimensions
          : dimensions // ignore: cast_nullable_to_non_nullable
              as DimensionsBean?,
      warrantyInformation: freezed == warrantyInformation
          ? _value.warrantyInformation
          : warrantyInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      shippingInformation: freezed == shippingInformation
          ? _value.shippingInformation
          : shippingInformation // ignore: cast_nullable_to_non_nullable
              as String?,
      availabilityStatus: freezed == availabilityStatus
          ? _value.availabilityStatus
          : availabilityStatus // ignore: cast_nullable_to_non_nullable
              as String?,
      reviews: freezed == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewsBean>?,
      returnPolicy: freezed == returnPolicy
          ? _value.returnPolicy
          : returnPolicy // ignore: cast_nullable_to_non_nullable
              as String?,
      minimumOrderQuantity: freezed == minimumOrderQuantity
          ? _value.minimumOrderQuantity
          : minimumOrderQuantity // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaBean?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductsBeanImpl implements _ProductsBean {
  const _$ProductsBeanImpl(
      {@JsonKey(name: 'id') this.id,
      @JsonKey(name: 'title') this.title,
      @JsonKey(name: 'description') this.description,
      @JsonKey(name: 'category') this.category,
      @JsonKey(name: 'price') this.price,
      @JsonKey(name: 'discountPercentage') this.discountPercentage,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'stock') this.stock,
      @JsonKey(name: 'tags') final List<String>? tags,
      @JsonKey(name: 'brand') this.brand,
      @JsonKey(name: 'sku') this.sku,
      @JsonKey(name: 'weight') this.weight,
      @JsonKey(name: 'dimensions') this.dimensions,
      @JsonKey(name: 'warrantyInformation') this.warrantyInformation,
      @JsonKey(name: 'shippingInformation') this.shippingInformation,
      @JsonKey(name: 'availabilityStatus') this.availabilityStatus,
      @JsonKey(name: 'reviews') final List<ReviewsBean>? reviews,
      @JsonKey(name: 'returnPolicy') this.returnPolicy,
      @JsonKey(name: 'minimumOrderQuantity') this.minimumOrderQuantity,
      @JsonKey(name: 'meta') this.meta,
      @JsonKey(name: 'images') final List<String>? images,
      @JsonKey(name: 'thumbnail') this.thumbnail})
      : _tags = tags,
        _reviews = reviews,
        _images = images;

  factory _$ProductsBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductsBeanImplFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'title')
  final String? title;
  @override
  @JsonKey(name: 'description')
  final String? description;
  @override
  @JsonKey(name: 'category')
  final String? category;
  @override
  @JsonKey(name: 'price')
  final double? price;
  @override
  @JsonKey(name: 'discountPercentage')
  final double? discountPercentage;
  @override
  @JsonKey(name: 'rating')
  final double? rating;
  @override
  @JsonKey(name: 'stock')
  final int? stock;
  final List<String>? _tags;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags {
    final value = _tags;
    if (value == null) return null;
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'brand')
  final String? brand;
  @override
  @JsonKey(name: 'sku')
  final String? sku;
  @override
  @JsonKey(name: 'weight')
  final int? weight;
  @override
  @JsonKey(name: 'dimensions')
  final DimensionsBean? dimensions;
  @override
  @JsonKey(name: 'warrantyInformation')
  final String? warrantyInformation;
  @override
  @JsonKey(name: 'shippingInformation')
  final String? shippingInformation;
  @override
  @JsonKey(name: 'availabilityStatus')
  final String? availabilityStatus;
  final List<ReviewsBean>? _reviews;
  @override
  @JsonKey(name: 'reviews')
  List<ReviewsBean>? get reviews {
    final value = _reviews;
    if (value == null) return null;
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'returnPolicy')
  final String? returnPolicy;
  @override
  @JsonKey(name: 'minimumOrderQuantity')
  final int? minimumOrderQuantity;
  @override
  @JsonKey(name: 'meta')
  final MetaBean? meta;
  final List<String>? _images;
  @override
  @JsonKey(name: 'images')
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'thumbnail')
  final String? thumbnail;

  @override
  String toString() {
    return 'ProductsBean(id: $id, title: $title, description: $description, category: $category, price: $price, discountPercentage: $discountPercentage, rating: $rating, stock: $stock, tags: $tags, brand: $brand, sku: $sku, weight: $weight, dimensions: $dimensions, warrantyInformation: $warrantyInformation, shippingInformation: $shippingInformation, availabilityStatus: $availabilityStatus, reviews: $reviews, returnPolicy: $returnPolicy, minimumOrderQuantity: $minimumOrderQuantity, meta: $meta, images: $images, thumbnail: $thumbnail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductsBeanImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.discountPercentage, discountPercentage) ||
                other.discountPercentage == discountPercentage) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.stock, stock) || other.stock == stock) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.sku, sku) || other.sku == sku) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.dimensions, dimensions) ||
                other.dimensions == dimensions) &&
            (identical(other.warrantyInformation, warrantyInformation) ||
                other.warrantyInformation == warrantyInformation) &&
            (identical(other.shippingInformation, shippingInformation) ||
                other.shippingInformation == shippingInformation) &&
            (identical(other.availabilityStatus, availabilityStatus) ||
                other.availabilityStatus == availabilityStatus) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.returnPolicy, returnPolicy) ||
                other.returnPolicy == returnPolicy) &&
            (identical(other.minimumOrderQuantity, minimumOrderQuantity) ||
                other.minimumOrderQuantity == minimumOrderQuantity) &&
            (identical(other.meta, meta) || other.meta == meta) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        category,
        price,
        discountPercentage,
        rating,
        stock,
        const DeepCollectionEquality().hash(_tags),
        brand,
        sku,
        weight,
        dimensions,
        warrantyInformation,
        shippingInformation,
        availabilityStatus,
        const DeepCollectionEquality().hash(_reviews),
        returnPolicy,
        minimumOrderQuantity,
        meta,
        const DeepCollectionEquality().hash(_images),
        thumbnail
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductsBeanImplCopyWith<_$ProductsBeanImpl> get copyWith =>
      __$$ProductsBeanImplCopyWithImpl<_$ProductsBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductsBeanImplToJson(
      this,
    );
  }
}

abstract class _ProductsBean implements ProductsBean {
  const factory _ProductsBean(
      {@JsonKey(name: 'id') final int? id,
      @JsonKey(name: 'title') final String? title,
      @JsonKey(name: 'description') final String? description,
      @JsonKey(name: 'category') final String? category,
      @JsonKey(name: 'price') final double? price,
      @JsonKey(name: 'discountPercentage') final double? discountPercentage,
      @JsonKey(name: 'rating') final double? rating,
      @JsonKey(name: 'stock') final int? stock,
      @JsonKey(name: 'tags') final List<String>? tags,
      @JsonKey(name: 'brand') final String? brand,
      @JsonKey(name: 'sku') final String? sku,
      @JsonKey(name: 'weight') final int? weight,
      @JsonKey(name: 'dimensions') final DimensionsBean? dimensions,
      @JsonKey(name: 'warrantyInformation') final String? warrantyInformation,
      @JsonKey(name: 'shippingInformation') final String? shippingInformation,
      @JsonKey(name: 'availabilityStatus') final String? availabilityStatus,
      @JsonKey(name: 'reviews') final List<ReviewsBean>? reviews,
      @JsonKey(name: 'returnPolicy') final String? returnPolicy,
      @JsonKey(name: 'minimumOrderQuantity') final int? minimumOrderQuantity,
      @JsonKey(name: 'meta') final MetaBean? meta,
      @JsonKey(name: 'images') final List<String>? images,
      @JsonKey(name: 'thumbnail')
      final String? thumbnail}) = _$ProductsBeanImpl;

  factory _ProductsBean.fromJson(Map<String, dynamic> json) =
      _$ProductsBeanImpl.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id;
  @override
  @JsonKey(name: 'title')
  String? get title;
  @override
  @JsonKey(name: 'description')
  String? get description;
  @override
  @JsonKey(name: 'category')
  String? get category;
  @override
  @JsonKey(name: 'price')
  double? get price;
  @override
  @JsonKey(name: 'discountPercentage')
  double? get discountPercentage;
  @override
  @JsonKey(name: 'rating')
  double? get rating;
  @override
  @JsonKey(name: 'stock')
  int? get stock;
  @override
  @JsonKey(name: 'tags')
  List<String>? get tags;
  @override
  @JsonKey(name: 'brand')
  String? get brand;
  @override
  @JsonKey(name: 'sku')
  String? get sku;
  @override
  @JsonKey(name: 'weight')
  int? get weight;
  @override
  @JsonKey(name: 'dimensions')
  DimensionsBean? get dimensions;
  @override
  @JsonKey(name: 'warrantyInformation')
  String? get warrantyInformation;
  @override
  @JsonKey(name: 'shippingInformation')
  String? get shippingInformation;
  @override
  @JsonKey(name: 'availabilityStatus')
  String? get availabilityStatus;
  @override
  @JsonKey(name: 'reviews')
  List<ReviewsBean>? get reviews;
  @override
  @JsonKey(name: 'returnPolicy')
  String? get returnPolicy;
  @override
  @JsonKey(name: 'minimumOrderQuantity')
  int? get minimumOrderQuantity;
  @override
  @JsonKey(name: 'meta')
  MetaBean? get meta;
  @override
  @JsonKey(name: 'images')
  List<String>? get images;
  @override
  @JsonKey(name: 'thumbnail')
  String? get thumbnail;
  @override
  @JsonKey(ignore: true)
  _$$ProductsBeanImplCopyWith<_$ProductsBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaBean _$MetaBeanFromJson(Map<String, dynamic> json) {
  return _MetaBean.fromJson(json);
}

/// @nodoc
mixin _$MetaBean {
  @JsonKey(name: 'createdAt')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updatedAt')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'barcode')
  String? get barcode => throw _privateConstructorUsedError;
  @JsonKey(name: 'qrCode')
  String? get qrCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaBeanCopyWith<MetaBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaBeanCopyWith<$Res> {
  factory $MetaBeanCopyWith(MetaBean value, $Res Function(MetaBean) then) =
      _$MetaBeanCopyWithImpl<$Res, MetaBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt,
      @JsonKey(name: 'barcode') String? barcode,
      @JsonKey(name: 'qrCode') String? qrCode});
}

/// @nodoc
class _$MetaBeanCopyWithImpl<$Res, $Val extends MetaBean>
    implements $MetaBeanCopyWith<$Res> {
  _$MetaBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? barcode = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaBeanImplCopyWith<$Res>
    implements $MetaBeanCopyWith<$Res> {
  factory _$$MetaBeanImplCopyWith(
          _$MetaBeanImpl value, $Res Function(_$MetaBeanImpl) then) =
      __$$MetaBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'createdAt') String? createdAt,
      @JsonKey(name: 'updatedAt') String? updatedAt,
      @JsonKey(name: 'barcode') String? barcode,
      @JsonKey(name: 'qrCode') String? qrCode});
}

/// @nodoc
class __$$MetaBeanImplCopyWithImpl<$Res>
    extends _$MetaBeanCopyWithImpl<$Res, _$MetaBeanImpl>
    implements _$$MetaBeanImplCopyWith<$Res> {
  __$$MetaBeanImplCopyWithImpl(
      _$MetaBeanImpl _value, $Res Function(_$MetaBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? barcode = freezed,
    Object? qrCode = freezed,
  }) {
    return _then(_$MetaBeanImpl(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      barcode: freezed == barcode
          ? _value.barcode
          : barcode // ignore: cast_nullable_to_non_nullable
              as String?,
      qrCode: freezed == qrCode
          ? _value.qrCode
          : qrCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaBeanImpl implements _MetaBean {
  const _$MetaBeanImpl(
      {@JsonKey(name: 'createdAt') this.createdAt,
      @JsonKey(name: 'updatedAt') this.updatedAt,
      @JsonKey(name: 'barcode') this.barcode,
      @JsonKey(name: 'qrCode') this.qrCode});

  factory _$MetaBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaBeanImplFromJson(json);

  @override
  @JsonKey(name: 'createdAt')
  final String? createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  final String? updatedAt;
  @override
  @JsonKey(name: 'barcode')
  final String? barcode;
  @override
  @JsonKey(name: 'qrCode')
  final String? qrCode;

  @override
  String toString() {
    return 'MetaBean(createdAt: $createdAt, updatedAt: $updatedAt, barcode: $barcode, qrCode: $qrCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaBeanImpl &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.barcode, barcode) || other.barcode == barcode) &&
            (identical(other.qrCode, qrCode) || other.qrCode == qrCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, updatedAt, barcode, qrCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaBeanImplCopyWith<_$MetaBeanImpl> get copyWith =>
      __$$MetaBeanImplCopyWithImpl<_$MetaBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaBeanImplToJson(
      this,
    );
  }
}

abstract class _MetaBean implements MetaBean {
  const factory _MetaBean(
      {@JsonKey(name: 'createdAt') final String? createdAt,
      @JsonKey(name: 'updatedAt') final String? updatedAt,
      @JsonKey(name: 'barcode') final String? barcode,
      @JsonKey(name: 'qrCode') final String? qrCode}) = _$MetaBeanImpl;

  factory _MetaBean.fromJson(Map<String, dynamic> json) =
      _$MetaBeanImpl.fromJson;

  @override
  @JsonKey(name: 'createdAt')
  String? get createdAt;
  @override
  @JsonKey(name: 'updatedAt')
  String? get updatedAt;
  @override
  @JsonKey(name: 'barcode')
  String? get barcode;
  @override
  @JsonKey(name: 'qrCode')
  String? get qrCode;
  @override
  @JsonKey(ignore: true)
  _$$MetaBeanImplCopyWith<_$MetaBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ReviewsBean _$ReviewsBeanFromJson(Map<String, dynamic> json) {
  return _ReviewsBean.fromJson(json);
}

/// @nodoc
mixin _$ReviewsBean {
  @JsonKey(name: 'rating')
  int? get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment')
  String? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'date')
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewerName')
  String? get reviewerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'reviewerEmail')
  String? get reviewerEmail => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReviewsBeanCopyWith<ReviewsBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewsBeanCopyWith<$Res> {
  factory $ReviewsBeanCopyWith(
          ReviewsBean value, $Res Function(ReviewsBean) then) =
      _$ReviewsBeanCopyWithImpl<$Res, ReviewsBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'reviewerName') String? reviewerName,
      @JsonKey(name: 'reviewerEmail') String? reviewerEmail});
}

/// @nodoc
class _$ReviewsBeanCopyWithImpl<$Res, $Val extends ReviewsBean>
    implements $ReviewsBeanCopyWith<$Res> {
  _$ReviewsBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? comment = freezed,
    Object? date = freezed,
    Object? reviewerName = freezed,
    Object? reviewerEmail = freezed,
  }) {
    return _then(_value.copyWith(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerName: freezed == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerEmail: freezed == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewsBeanImplCopyWith<$Res>
    implements $ReviewsBeanCopyWith<$Res> {
  factory _$$ReviewsBeanImplCopyWith(
          _$ReviewsBeanImpl value, $Res Function(_$ReviewsBeanImpl) then) =
      __$$ReviewsBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'rating') int? rating,
      @JsonKey(name: 'comment') String? comment,
      @JsonKey(name: 'date') String? date,
      @JsonKey(name: 'reviewerName') String? reviewerName,
      @JsonKey(name: 'reviewerEmail') String? reviewerEmail});
}

/// @nodoc
class __$$ReviewsBeanImplCopyWithImpl<$Res>
    extends _$ReviewsBeanCopyWithImpl<$Res, _$ReviewsBeanImpl>
    implements _$$ReviewsBeanImplCopyWith<$Res> {
  __$$ReviewsBeanImplCopyWithImpl(
      _$ReviewsBeanImpl _value, $Res Function(_$ReviewsBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rating = freezed,
    Object? comment = freezed,
    Object? date = freezed,
    Object? reviewerName = freezed,
    Object? reviewerEmail = freezed,
  }) {
    return _then(_$ReviewsBeanImpl(
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerName: freezed == reviewerName
          ? _value.reviewerName
          : reviewerName // ignore: cast_nullable_to_non_nullable
              as String?,
      reviewerEmail: freezed == reviewerEmail
          ? _value.reviewerEmail
          : reviewerEmail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReviewsBeanImpl implements _ReviewsBean {
  const _$ReviewsBeanImpl(
      {@JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'comment') this.comment,
      @JsonKey(name: 'date') this.date,
      @JsonKey(name: 'reviewerName') this.reviewerName,
      @JsonKey(name: 'reviewerEmail') this.reviewerEmail});

  factory _$ReviewsBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReviewsBeanImplFromJson(json);

  @override
  @JsonKey(name: 'rating')
  final int? rating;
  @override
  @JsonKey(name: 'comment')
  final String? comment;
  @override
  @JsonKey(name: 'date')
  final String? date;
  @override
  @JsonKey(name: 'reviewerName')
  final String? reviewerName;
  @override
  @JsonKey(name: 'reviewerEmail')
  final String? reviewerEmail;

  @override
  String toString() {
    return 'ReviewsBean(rating: $rating, comment: $comment, date: $date, reviewerName: $reviewerName, reviewerEmail: $reviewerEmail)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewsBeanImpl &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.reviewerName, reviewerName) ||
                other.reviewerName == reviewerName) &&
            (identical(other.reviewerEmail, reviewerEmail) ||
                other.reviewerEmail == reviewerEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, rating, comment, date, reviewerName, reviewerEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewsBeanImplCopyWith<_$ReviewsBeanImpl> get copyWith =>
      __$$ReviewsBeanImplCopyWithImpl<_$ReviewsBeanImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReviewsBeanImplToJson(
      this,
    );
  }
}

abstract class _ReviewsBean implements ReviewsBean {
  const factory _ReviewsBean(
          {@JsonKey(name: 'rating') final int? rating,
          @JsonKey(name: 'comment') final String? comment,
          @JsonKey(name: 'date') final String? date,
          @JsonKey(name: 'reviewerName') final String? reviewerName,
          @JsonKey(name: 'reviewerEmail') final String? reviewerEmail}) =
      _$ReviewsBeanImpl;

  factory _ReviewsBean.fromJson(Map<String, dynamic> json) =
      _$ReviewsBeanImpl.fromJson;

  @override
  @JsonKey(name: 'rating')
  int? get rating;
  @override
  @JsonKey(name: 'comment')
  String? get comment;
  @override
  @JsonKey(name: 'date')
  String? get date;
  @override
  @JsonKey(name: 'reviewerName')
  String? get reviewerName;
  @override
  @JsonKey(name: 'reviewerEmail')
  String? get reviewerEmail;
  @override
  @JsonKey(ignore: true)
  _$$ReviewsBeanImplCopyWith<_$ReviewsBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

DimensionsBean _$DimensionsBeanFromJson(Map<String, dynamic> json) {
  return _DimensionsBean.fromJson(json);
}

/// @nodoc
mixin _$DimensionsBean {
  @JsonKey(name: 'width')
  double? get width => throw _privateConstructorUsedError;
  @JsonKey(name: 'height')
  double? get height => throw _privateConstructorUsedError;
  @JsonKey(name: 'depth')
  double? get depth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DimensionsBeanCopyWith<DimensionsBean> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DimensionsBeanCopyWith<$Res> {
  factory $DimensionsBeanCopyWith(
          DimensionsBean value, $Res Function(DimensionsBean) then) =
      _$DimensionsBeanCopyWithImpl<$Res, DimensionsBean>;
  @useResult
  $Res call(
      {@JsonKey(name: 'width') double? width,
      @JsonKey(name: 'height') double? height,
      @JsonKey(name: 'depth') double? depth});
}

/// @nodoc
class _$DimensionsBeanCopyWithImpl<$Res, $Val extends DimensionsBean>
    implements $DimensionsBeanCopyWith<$Res> {
  _$DimensionsBeanCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
  }) {
    return _then(_value.copyWith(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DimensionsBeanImplCopyWith<$Res>
    implements $DimensionsBeanCopyWith<$Res> {
  factory _$$DimensionsBeanImplCopyWith(_$DimensionsBeanImpl value,
          $Res Function(_$DimensionsBeanImpl) then) =
      __$$DimensionsBeanImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'width') double? width,
      @JsonKey(name: 'height') double? height,
      @JsonKey(name: 'depth') double? depth});
}

/// @nodoc
class __$$DimensionsBeanImplCopyWithImpl<$Res>
    extends _$DimensionsBeanCopyWithImpl<$Res, _$DimensionsBeanImpl>
    implements _$$DimensionsBeanImplCopyWith<$Res> {
  __$$DimensionsBeanImplCopyWithImpl(
      _$DimensionsBeanImpl _value, $Res Function(_$DimensionsBeanImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? width = freezed,
    Object? height = freezed,
    Object? depth = freezed,
  }) {
    return _then(_$DimensionsBeanImpl(
      width: freezed == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      height: freezed == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as double?,
      depth: freezed == depth
          ? _value.depth
          : depth // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DimensionsBeanImpl implements _DimensionsBean {
  const _$DimensionsBeanImpl(
      {@JsonKey(name: 'width') this.width,
      @JsonKey(name: 'height') this.height,
      @JsonKey(name: 'depth') this.depth});

  factory _$DimensionsBeanImpl.fromJson(Map<String, dynamic> json) =>
      _$$DimensionsBeanImplFromJson(json);

  @override
  @JsonKey(name: 'width')
  final double? width;
  @override
  @JsonKey(name: 'height')
  final double? height;
  @override
  @JsonKey(name: 'depth')
  final double? depth;

  @override
  String toString() {
    return 'DimensionsBean(width: $width, height: $height, depth: $depth)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DimensionsBeanImpl &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.depth, depth) || other.depth == depth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height, depth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DimensionsBeanImplCopyWith<_$DimensionsBeanImpl> get copyWith =>
      __$$DimensionsBeanImplCopyWithImpl<_$DimensionsBeanImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DimensionsBeanImplToJson(
      this,
    );
  }
}

abstract class _DimensionsBean implements DimensionsBean {
  const factory _DimensionsBean(
      {@JsonKey(name: 'width') final double? width,
      @JsonKey(name: 'height') final double? height,
      @JsonKey(name: 'depth') final double? depth}) = _$DimensionsBeanImpl;

  factory _DimensionsBean.fromJson(Map<String, dynamic> json) =
      _$DimensionsBeanImpl.fromJson;

  @override
  @JsonKey(name: 'width')
  double? get width;
  @override
  @JsonKey(name: 'height')
  double? get height;
  @override
  @JsonKey(name: 'depth')
  double? get depth;
  @override
  @JsonKey(ignore: true)
  _$$DimensionsBeanImplCopyWith<_$DimensionsBeanImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
