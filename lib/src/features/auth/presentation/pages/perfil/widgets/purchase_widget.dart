import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class PurchaseWidget extends StatelessWidget {
  const PurchaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kLayoutSpacerXXS),
      child: Container(
        decoration: BoxDecoration(
          color: DSColors.neutral.s100,
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
          padding: const EdgeInsets.symmetric(
              horizontal: kLayoutSpacerXS, vertical: kLayoutSpacerXS),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  DSText(
                    '#10',
                    type: DSTextType.NUMBER_SMALL,
                    color: DSColors.primary.base,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  DSText(
                    r'R$ 105,00',
                    type: DSTextType.NUMBER_SMALL,
                  ),
                  DSText(
                    'Compra realizada às 22:47',
                    type: DSTextType.BODY_SMALLER,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
