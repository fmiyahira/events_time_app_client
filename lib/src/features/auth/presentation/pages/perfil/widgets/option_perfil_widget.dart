import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class OptionPageWidget extends StatelessWidget {
  final String optionTitle;
  final String optionSubtitle;
  final String routeName;
  final IconData icon;
  const OptionPageWidget({
    super.key,
    required this.optionSubtitle,
    required this.optionTitle,
    required this.routeName,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: kLayoutSpacerXXS, horizontal: kComponentSpacerXL),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: DSIconButton(icon: icon, onPressed: () {}),
            ),
            const SizedBox(width: 10),
            Expanded(
              flex: 7,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <DSText>[
                  DSText(
                    optionTitle,
                    type: DSTextType.BODY,
                  ),
                  DSText(
                    'Minhas informações da conta',
                    type: DSTextType.BODY_SMALLER,
                  ),
                ],
              ),
            ),
            Expanded(
              child: DSIconButton(
                icon: Icons.arrow_forward_ios_rounded,
                theme: DSIconButtonTheme(
                  iconColor: DSColors.neutral.s46,
                  iconSize: 16,
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
