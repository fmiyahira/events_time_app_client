import 'dart:ffi';

import 'package:events_time_app_client/src/features/products/data/implementations/menu_datasource_impl.dart';
import 'package:events_time_app_client/src/features/products/domain/interfaces/repositories/menu_repository.dart';
import 'package:events_time_app_client/src/features/products/domain/models/menu_model.dart';

class MenuRepositoryImpl implements IMenuRepository {
  final MenuDatasourceImpl menuDatasource;

  MenuRepositoryImpl({required this.menuDatasource});

  @override
  Future<MenuModel> getMenu(Int eventId) => menuDatasource.getMenu(eventId);
}
