import 'package:events_time_app_client/app_client.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/cards/list_cards_register.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/steps/shopping_cart_checkout.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:events_time_microapp_hub/events_time_microapp_hub.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ShoppingCartResumePage extends StatefulWidget {
  static String routeName = '/shopping-cart-page';

  const ShoppingCartResumePage({
    super.key,
  });

  @override
  State<ShoppingCartResumePage> createState() => _ShoppingCartResumePageState();
}

class _ShoppingCartResumePageState extends State<ShoppingCartResumePage> {
  double priceFinal = 0;
  double calculatePriceTotal() {
    for (final ItemCartModelHub item in AppClient().shoppingCart.items) {
      priceFinal += item.priceFinal;
    }
    return priceFinal;
  }

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
          padding: const EdgeInsets.symmetric(
            vertical: kLayoutSpacerXS,
            horizontal: kLayoutSpacerS,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              DSText(
                'Resumo de valores',
                type: DSTextType.HEADING2,
              ),
              const SizedBox(height: kLayoutSpacerXS),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: <Widget>[
                      ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(height: kLayoutSpacerXS);
                        },
                        itemCount: AppClient().shoppingCart.items.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <DSText>[
                              DSText(
                                AppClient()
                                    .shoppingCart
                                    .items[index]
                                    .product
                                    .name,
                                type: DSTextType.NUMBER,
                              ),
                              DSText(
                                'R\$ ${NumberFormat.currency(locale: 'br', symbol: '').format(AppClient().shoppingCart.items[index].priceFinal)}',
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
              Container(
                padding: const EdgeInsets.symmetric(horizontal: kLayoutSpacerS),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: kLayoutSpacerXS),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <DSText>[
                        DSText(
                          'Total',
                          type: DSTextType.HEADING4,
                        ),
                        DSText(
                          'R\$ ${NumberFormat.currency(locale: 'br', symbol: '').format(calculatePriceTotal())}',
                          type: DSTextType.HEADING4,
                        ),
                      ],
                    ),
                    const SizedBox(height: kLayoutSpacerXS),
                    DSDivider(),
                    const SizedBox(height: kLayoutSpacerXXS),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
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
                    const SizedBox(height: 12),
                    Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: DSColors.neutral.s88,
                            shape: BoxShape.circle,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(kComponentSpacerS),
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
                        const SizedBox(width: kLayoutSpacerXXS),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            DSText(
                              'Crédito',
                              type: DSTextType.NUMBER_SMALL,
                            ),
                            const SizedBox(height: 6),
                            DSText(
                              'Mastercard ** 1212',
                              type: DSTextType.BODY_SMALL,
                              theme: DSTextTheme(
                                fontSize: 12,
                                textColor: DSColors.neutral.s46,
                              ),
                            ),
                            const SizedBox(height: kLayoutSpacerS),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: kComponentSpacerXXL),
                    DSButton(
                      text: 'Finalizar Compra',
                      buttonStyle: DSButtonStyle.PRIMARY,
                      size: DSButtonSize.SMALL,
                      onPressed: () =>
                          Navigator.of(context).pushNamedAndRemoveUntil(
                        ShoppingCartCheckout.routeName,
                        (_) => false,
                      ),
                    ),
                    const SizedBox(height: kComponentSpacerXXL),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
