import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class ListCardsRegister extends StatelessWidget {
  static String routeName = '/list-cards-register';

  const ListCardsRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSColors.neutral.s100,
      appBar: DSNavBar(
        leading: DSIconButton(
          icon: Icons.arrow_back_ios_new_rounded,
          onPressed: () => Navigator.of(context).pop(),
          theme: DSIconButtonTheme(iconPadding: 0, buttonSize: 0),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DSText(
                'Pagamentos',
                type: DSTextType.HEADING2,
              ),
              const SizedBox(height: kLayoutSpacerXXS),
              Expanded(
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int i) {
                    return InkWell(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kLayoutSpacerXXS),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: DSColors.neutral.s72),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      color: DSColors.neutral.s88,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(12), //
                                        child: Image.asset(
                                          'assets/images/mastercard2.jpeg',
                                          height: 8,
                                          width: 8,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 8),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      DSText(
                                        'Crédito',
                                        type: DSTextType.NUMBER_SMALL,
                                        theme: const DSTextTheme(fontSize: 12),
                                      ),
                                      const SizedBox(height: 6),
                                      DSText(
                                        'Mastercard **** 1212',
                                        type: DSTextType.BODY_SMALL,
                                        theme: DSTextTheme(
                                            fontSize: 12,
                                            textColor: DSColors.neutral.s46),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              DSIconButton(
                                  icon: Icons.more_horiz, onPressed: () {}),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
