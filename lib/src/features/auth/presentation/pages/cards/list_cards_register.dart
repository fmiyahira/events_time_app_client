import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class ListCardsRegister extends StatelessWidget {
  static String routeName = '/list-cards-register';

  const ListCardsRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: DSIconButton(
          icon: Icons.arrow_back_ios_new_rounded,
          onPressed: () {},
        ),
        backgroundColor: DSColors.tertiary.light,
        title: DSText(
          'Pagamentos',
          type: DSTextType.BODY_CAPTION,
          theme: DSTextTheme(
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: ListView.builder(
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: 6,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
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
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: DSColors.neutral.s88,
                              shape: BoxShape.circle,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(12), //
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                      DSIconButton(icon: Icons.more_horiz, onPressed: () {}),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
