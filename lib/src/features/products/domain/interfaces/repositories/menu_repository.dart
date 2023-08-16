import 'dart:ffi';

import 'package:events_time_app_client/src/features/products/domain/models/menu_model.dart';

abstract class IMenuRepository {
  Future<MenuModel?> getMenu(Int eventId);
}
