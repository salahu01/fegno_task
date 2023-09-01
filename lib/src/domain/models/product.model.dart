import 'package:flutter/material.dart';

@immutable
final class ProductModel {
  final num price;
  final String name;
  final String image;
  final int count;

  const ProductModel({
    required this.price,
    required this.name,
    required this.image,
    required this.count,
  });
}
