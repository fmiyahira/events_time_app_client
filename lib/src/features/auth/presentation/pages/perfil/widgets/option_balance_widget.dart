import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class OptionBalanceWidget extends StatelessWidget {
  final IconData icon;
  final String titleIcon;
  const OptionBalanceWidget({
    super.key,
    required this.icon,
    required this.titleIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 12, 0),
      child: Column(
        children: <Widget>[
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                color: DSColors.tertiary.light,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: DSColors.neutral.s72,
                    blurRadius: 5,
                    spreadRadius: 1,
                    offset: const Offset(4, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: DSIconButton(
                  icon: icon,
                  theme: DSIconButtonTheme(iconColor: DSColors.neutral.s46),
                  onPressed: () {},
                ),
              ),
            ),
            onTap: () {},
          ),
          const SizedBox(height: 8),
          DSText(
            titleIcon,
            type: DSTextType.NUMBER_SMALL,
            theme: DSTextTheme(textColor: DSColors.neutral.s46),
          ),
        ],
      ),
    );
  }
}
