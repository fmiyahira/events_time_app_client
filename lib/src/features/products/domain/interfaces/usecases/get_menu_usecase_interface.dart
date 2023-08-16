import 'dart:ffi';

import 'package:events_time_app_client/src/features/products/domain/models/menu_model.dart';

abstract class IGetMenuUsecaseInterface {
  Future<MenuModel?> call(Int eventId);
}
