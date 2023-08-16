import 'dart:convert';
import 'dart:ffi';

import 'package:events_time_app_client/src/features/products/data/interfaces/menu_datasource.dart';
import 'package:events_time_app_client/src/features/products/domain/models/menu_model.dart';
import 'package:events_time_microapp_dependencies/events_time_microapp_dependencies.dart';

class MenuDatasourceImpl implements IMenuDatasource {
  static const String ENDPOINT_MENU_ID = '/api/mobile/products/menu';
  final IRequesting requesting;

  MenuDatasourceImpl({
    required this.requesting,
  });

  @override
  Future<MenuModel> getMenu(Int eventId) async {
    final RequestingResponse<dynamic> response = await requesting.post(
      ENDPOINT_MENU_ID,
      queryParameters: {
        'event_id': eventId,
      },
    );

    return MenuModel.fromMap(response.body as Map<String, dynamic>);
  }
}
