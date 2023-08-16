import 'dart:ffi';

import 'package:events_time_app_client/src/features/products/domain/interfaces/repositories/menu_repository.dart';
import 'package:events_time_app_client/src/features/products/domain/interfaces/usecases/get_menu_usecase_interface.dart';
import 'package:events_time_app_client/src/features/products/domain/models/menu_model.dart';

abstract class GetMenuUsecaseImpl implements IGetMenuUsecaseInterface {
  final IMenuRepository repository;

  GetMenuUsecaseImpl(this.repository);

  @override
  Future<MenuModel?> call(Int eventId) => repository.getMenu(eventId);
}
