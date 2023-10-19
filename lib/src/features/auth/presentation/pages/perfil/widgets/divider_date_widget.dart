import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class DividerDateWidget extends StatelessWidget {
  const DividerDateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
              child: Divider(
                color: DSColors.neutral.s46,
                height: 36,
              )),
        ),
        DSText(
          '20/08/2023',
          type: DSTextType.NUMBER_SMALL,
          color: DSColors.neutral.s46,
        ),
        Expanded(
          child: Container(
              margin: const EdgeInsets.only(left: 20.0, right: 10.0),
              child: Divider(
                color: DSColors.neutral.s46,
                height: 36,
              )),
        ),
      ],
    );
  }
}
