import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/enums/list_histories_filters_enum.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class SegmentedButtonChoiceWidget extends StatelessWidget {
  final Function onSelected;
  final ListHistoriesFilters valueSelected;
  const SegmentedButtonChoiceWidget({
    super.key,
    required this.valueSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SegmentedButton<ListHistoriesFilters>(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return DSColors.tertiary.base;
            }
            return DSColors.neutral.s100;
          },
        ),
        side: MaterialStateProperty.resolveWith<BorderSide>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return BorderSide(color: DSColors.neutral.s100);
            }
            return BorderSide(color: DSColors.tertiary.base);
          },
        ),
        iconColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.selected)) {
              return DSColors.neutral.s100;
            }
            return DSColors.tertiary.base;
          },
        ),
      ),
      showSelectedIcon: false,
      segments: ListHistoriesFilters.values
          .map((ListHistoriesFilters listVisitsFilters) =>
              ButtonSegment<ListHistoriesFilters>(
                value: listVisitsFilters,
                label: Text(
                  listVisitsFilters.title,
                  style: const TextStyle(fontSize: 14),
                ),
              ))
          .toList(),
      selected: <ListHistoriesFilters>{valueSelected},
      onSelectionChanged: (Set<ListHistoriesFilters> newSelection) =>
          onSelected(newSelection.first),
    );
  }
}
