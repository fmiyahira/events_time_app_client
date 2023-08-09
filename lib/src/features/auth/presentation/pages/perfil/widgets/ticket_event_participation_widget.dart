import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class TicketEventParticipationWidget extends StatelessWidget {
  const TicketEventParticipationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
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
        ),
        Positioned(
          left: -5,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
        ),
        Positioned(
          right: -5,
          child: Container(
            height: 20,
            width: 20,
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
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
                  padding: const EdgeInsets.symmetric(
                    horizontal: 36,
                    vertical: 18,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: DSText(
                              'Associação Nipo Brasileira',
                              type: DSTextType.NUMBER_SMALL,
                              theme: const DSTextTheme(
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              DSIconButton(
                                icon: Icons.calendar_month_rounded,
                                onPressed: () {},
                                theme: DSIconButtonTheme(iconSize: 16),
                              ),
                              DSText(
                                '24/11/2022',
                                type: DSTextType.NUMBER_SMALL,
                                theme: const DSTextTheme(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      DSText(
                          'Av. Min. João Arinos, 140 - Jardim Veraneio, Campo Grande - MS',
                          type: DSTextType.BODY_SMALLER)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
