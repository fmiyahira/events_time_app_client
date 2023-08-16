import 'package:events_time_app_client/src/features/auth/presentation/pages/cards/list_cards_register.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/increment_item_widget.dart';
import 'package:events_time_app_client/src/features/auth/presentation/perfil_page.dart';
import 'package:events_time_app_client/src/features/commons/utils/strings/assets_images_strings.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/menu_page.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class ShoppingCartPage extends StatefulWidget {
  static String routeName = '/shopping-cart-page';

  const ShoppingCartPage({super.key});

  @override
  State<ShoppingCartPage> createState() => _ShoppingCartPageState();
}

class _ShoppingCartPageState extends State<ShoppingCartPage> {
  int count = 0;

  double priceProduct = 200.00;
  double calculate = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSColors.neutral.s100,
      appBar: DSNavBar(
        leading: DSIconButton(
          icon: Icons.arrow_back_ios,
          onPressed: () {},
          theme: DSIconButtonTheme(iconPadding: 0, buttonSize: 0),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: kLayoutSpacerXS,
            horizontal: kLayoutSpacerS,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DSText(
                'Resumo de valores',
                type: DSTextType.HEADING2,
              ),
              const SizedBox(height: kLayoutSpacerXS),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: kLayoutSpacerXS, vertical: kLayoutSpacerXS),
                  decoration: BoxDecoration(
                    color: DSColors.primary.lighter,
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
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        ListView.separated(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          separatorBuilder: (context, index) {
                            return const SizedBox(height: kLayoutSpacerXS);
                          },
                          itemCount: 8,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                DSText(
                                  'Barraca do Fulano ${index}',
                                  type: DSTextType.NUMBER,
                                ),
                                DSText(
                                  r'R$ 200,00',
                                  type: DSTextType.NUMBER,
                                ),
                              ],
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: kLayoutSpacerXS),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DSText(
                    'Total',
                    type: DSTextType.HEADING3,
                  ),
                  DSText(
                    r'R$ 12.000,00',
                    type: DSTextType.HEADING3,
                  ),
                ],
              ),
              const SizedBox(height: kLayoutSpacerXS),
              Column(
                children: <Widget>[
                  DSDivider(
                    theme: DSDividerTheme(
                      color: DSColors.neutral.s88,
                    ),
                  ),
                  const SizedBox(height: kLayoutSpacerXXS),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          DSText(
                            'Pagamento pelo app',
                            type: DSTextType.NUMBER,
                            theme: DSTextTheme(textColor: DSColors.neutral.s46),
                          ),
                          GestureDetector(
                            child: DSText(
                              'Trocar',
                              type: DSTextType.LABEL_SMALL,
                              theme: DSTextTheme(
                                textColor: DSColors.error.base,
                              ),
                            ),
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(ListCardsRegister.routeName);
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: DSColors.neutral.s88,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(kComponentSpacerS),
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
                      const SizedBox(width: kLayoutSpacerXXS),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          DSText(
                            'Crédito',
                            type: DSTextType.NUMBER_SMALL,
                          ),
                          const SizedBox(height: 6),
                          DSText(
                            'Mastercard ** 1212',
                            type: DSTextType.BODY_SMALL,
                            theme: DSTextTheme(
                                fontSize: 12, textColor: DSColors.neutral.s46),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: kLayoutSpacerXXS),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: DSColors.neutral.s100,
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              DSButtonBar(
                primaryButtonText: 'Finalizar Compra',
                primaryOnPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
