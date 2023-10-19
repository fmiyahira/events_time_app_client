import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class OptionPersonalDataWidget extends StatelessWidget {
  final String optionTitle;
  final String optionSubtitle;
  final String routeName;
  const OptionPersonalDataWidget({
    super.key,
    required this.optionSubtitle,
    required this.optionTitle,
    required this.routeName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushReplacementNamed(routeName);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: kLayoutSpacerXXS, horizontal: kLayoutSpacerS),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                DSText(
                  optionTitle,
                  type: DSTextType.BODY,
                ),
                DSIconButton(
                  icon: Icons.arrow_forward_ios_rounded,
                  theme: DSIconButtonTheme(
                    iconColor: DSColors.neutral.s46,
                    iconSize: 16,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            DSText(
              optionSubtitle,
              type: DSTextType.BODY_SMALLER,
              color: DSColors.neutral.s46,
            ),
          ],
        ),
      ),
    );
  }
}
