import 'package:events_time_app_client/src/features/auth/presentation/pages/utils/enums/history_status_enum_string.dart';
import 'package:flutter/material.dart';

enum HistoryStatusEnum {
  expired,
  retired,
  bought,
  canceled,
}

extension HistoryStatusEnumExtension on HistoryStatusEnum {
  Color getColor() {
    switch (this) {
      case HistoryStatusEnum.expired:
        return Colors.yellow.shade400;
      case HistoryStatusEnum.retired:
        return Colors.green.shade800;
      case HistoryStatusEnum.bought:
        return Colors.blue.shade800;
      case HistoryStatusEnum.canceled:
        return Colors.red.shade800;
    }
  }

  String getTitle() {
    switch (this) {
      case HistoryStatusEnum.expired:
        return HistoryStatusEnumStrings.expired;
      case HistoryStatusEnum.retired:
        return HistoryStatusEnumStrings.retired;
      case HistoryStatusEnum.bought:
        return HistoryStatusEnumStrings.bought;
      case HistoryStatusEnum.canceled:
        return HistoryStatusEnumStrings.canceled;
    }
  }
}
