import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'product.model.freezed.dart';

@freezed
class ProductModel with _$ProductModel {
  const factory ProductModel({
    required num price,
    required String name,
    required String image,
    required int count,
  }) = _ProductModel;
}
