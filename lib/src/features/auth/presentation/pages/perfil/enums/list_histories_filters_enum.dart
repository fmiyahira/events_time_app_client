import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/enums/history_status_enum.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/utils/string/list_histories_strings.dart';

enum ListHistoriesFilters {
  invalid(
    listHistoryStatusEnum: <HistoryStatusEnum>[
      HistoryStatusEnum.expired,
    ],
    title: ListHistoriesStrings.invalid,
  ),
  valid(
    listHistoryStatusEnum: <HistoryStatusEnum>[
      HistoryStatusEnum.bought,
      HistoryStatusEnum.retired,
    ],
    title: ListHistoriesStrings.valid,
  );

  final List<HistoryStatusEnum> listHistoryStatusEnum;
  final String title;

  const ListHistoriesFilters({
    required this.listHistoryStatusEnum,
    required this.title,
  });
}
