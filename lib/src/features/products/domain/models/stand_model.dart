import 'package:events_time_app_client/src/features/products/domain/models/product_model.dart';

class StandModel {
  final String name;
  final bool isCashier;

  StandModel({
    required this.name,
    required this.isCashier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'isCashier': isCashier,
    };
  }

  factory StandModel.fromMap(Map<String, dynamic> map) {
    return StandModel(
      name: map['name'] as String,
      isCashier: map['is_cashier'] as bool,
    );
  }
}

// "id": 0,
//     "name": "string",
//     "is_cashier": true,
//     "stand_category_id": 0,
//     "event_id": 0