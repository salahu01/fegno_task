import 'package:fegno_task/src/domain/models/product.model.dart';
import 'package:flutter/material.dart';

@immutable
class AppDats {
  static const products = [
    ProductModel(
      price: 250,
      name: 'OnePlus Nord CE 3 Lite 5G (Pastel Lime, 8GB RAM, 128GB Storage)',
      image: 'https://m.media-amazon.com/images/I/61QRgOgBx0L._SL1500_.jpg',
      count: 1,
    ),
    ProductModel(
      price: 400,
      image: 'https://m.media-amazon.com/images/I/61JS7lF2aqL._SL1200_.jpg',
      name: 'iQOO Neo 7 5G (Frost Blue, 8GB RAM, 128GB Storage) | Dimensity 8200, only 4nm Processor in The Segment | 50% Charge in 10 mins | Motion Control & 90 FPS Gaming',
      count: 1,
    ),
    ProductModel(
      price: 800,
      name: 'Apple iPhone 14 Pro (128 GB) - Space Black',
      image: 'https://m.media-amazon.com/images/I/61XO4bORHUL._SL1500_.jpg',
      count: 1,
    ),
  ];
}
