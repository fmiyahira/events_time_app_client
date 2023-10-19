import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/purchases_history/purchases_history_page.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class EventOptionWidget extends StatelessWidget {
  const EventOptionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
          horizontal: kLayoutSpacerS, vertical: kLayoutSpacerXXS),
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
        child: InkWell(
          onTap: () => {
            Navigator.of(context)
                .pushReplacementNamed(PurchasesHistoryPage.routeName)
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  DSText(
                    'Festival do Japão 3º edição',
                    type: DSTextType.NUMBER,
                  ),
                ],
              ),
              DSText(
                'Av. Min. João Arinos, 140 - Jardim Veraneio',
                type: DSTextType.NUMBER_SMALLER,
                color: DSColors.primary.base,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
