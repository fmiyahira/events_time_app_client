import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class IncrementItemWidget extends StatefulWidget {
  final int count;
  const IncrementItemWidget({super.key, required this.count});

  @override
  State<IncrementItemWidget> createState() => IncrementItemWidgetState();
}

class IncrementItemWidgetState extends State<IncrementItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 28,
          width: 28,
          margin: const EdgeInsets.fromLTRB(0, 0, 10, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: DSColors.primary.base,
          ),
          child: DSIconButton(
            icon: Icons.remove,
            theme: DSIconButtonTheme(
              iconColor: DSColors.neutral.s100,
              iconPadding: 0,
              iconSize: 18,
            ),
            onPressed: () => setState(
              () {
                if (widget.count == 0) return;
                // widget.count--;
              },
            ),
          ),
        ),
        DSText(
          '0',
          type: DSTextType.LABEL,
        ),
        Container(
          height: 28,
          width: 28,
          margin: const EdgeInsets.fromLTRB(10, 0, 0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: DSColors.primary.base,
          ),
          child: DSIconButton(
            icon: Icons.add,
            theme: DSIconButtonTheme(
              iconColor: DSColors.neutral.s100,
              iconPadding: 0,
              iconSize: 18,
            ),
            onPressed: () => setState(
              () {
                print(widget.count);
                // widget.count++;
                print(widget.count);
              },
            ),
          ),
        ),
      ],
    );
  }
}
