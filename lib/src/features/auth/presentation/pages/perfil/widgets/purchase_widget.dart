import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class PurchaseWidget extends StatelessWidget {
  const PurchaseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        decoration: BoxDecoration(
          color: DSColors.neutral.s100,
          border: Border(
            bottom: BorderSide(width: 0, color: DSColors.success.base),
            left: BorderSide(width: 8, color: DSColors.success.base),
            top: BorderSide(width: 0, color: DSColors.success.base),
            right: BorderSide(width: 0, color: DSColors.success.base),
          ),
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
          padding: const EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  DSText(
                    'Sobá Médio',
                    type: DSTextType.NUMBER,
                  ),
                  DSText(
                    'Associação Okinawa de Campo Grande',
                    type: DSTextType.BODY_SMALLER,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  DSText(
                    r'R$ 25,00',
                    type: DSTextType.NUMBER_SMALL,
                  ),
                  DSText(
                    '20/04/2023',
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
