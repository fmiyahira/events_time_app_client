import 'dart:convert';
import 'dart:ffi';

import 'package:events_time_app_client/src/features/products/domain/models/stand_model.dart';

class ProductModel {
  final String name;
  final Float price;
  final StandModel stand;

  ProductModel({
    required this.name,
    required this.price,
    required this.stand,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'price': price,
      'stand': stand,
    };
  }

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
      name: map['name'] as String,
      price: map['price'] as Float,
      stand: map['stand'] as StandModel,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductModel.fromJson(String source) =>
      ProductModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
