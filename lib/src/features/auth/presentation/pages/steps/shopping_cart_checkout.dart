import 'package:events_time_app_client/src/features/auth/presentation/pages/purchased_produts/list_of_purchased_products_page.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class ShoppingCartCheckout extends StatefulWidget {
  static String routeName = '/loading-checkout-page';
  const ShoppingCartCheckout({super.key});

  @override
  State<ShoppingCartCheckout> createState() => _ShoppingCartCheckoutState();
}

class _ShoppingCartCheckoutState extends State<ShoppingCartCheckout> {
  bool estaFinalizado = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSColors.neutral.s100,
      body: SafeArea(
        child: estaFinalizado
            ? Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: kLayoutSpacerS,
                  vertical: kLayoutSpacerXS,
                ),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          DSText(
                            'Compra finalizada!',
                            type: DSTextType.HEADING2,
                            color: DSColors.primary.base,
                          ),
                          DSText(
                            'Peça a retirada',
                            type: DSTextType.INPUT,
                          ),
                          const SizedBox(height: kLayoutSpacerS),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: kLayoutSpacerXXS,
                            ),
                            child: Container(
                              padding: const EdgeInsets.all(kLayoutSpacerXS),
                              decoration: BoxDecoration(
                                color: DSColors.neutral.s100,
                                borderRadius:
                                    BorderRadius.circular(kLayoutSpacerXXXS),
                                border: Border.all(
                                  color: DSColors.neutral.s88,
                                ),
                                boxShadow: <BoxShadow>[
                                  BoxShadow(
                                    color: DSColors.neutral.s88,
                                    offset: const Offset(
                                      5.0,
                                      5.0,
                                    ),
                                    blurRadius: 10.0,
                                    spreadRadius: 2.0,
                                  ), //BoxShadow
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  DSText(
                                    'Detalhes da compra',
                                    type: DSTextType.HEADING3,
                                  ),
                                  const SizedBox(width: 8),
                                  DSText(
                                    'Realizado em: 12/09/2023 às 23:00',
                                    type: DSTextType.BODY_SMALLER,
                                  ),
                                  const SizedBox(height: 16),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      DSText(
                                        'Exemplo 1',
                                        type: DSTextType.BODY_SMALL,
                                      ),
                                      DSText(
                                        r'R$ 1,00',
                                        type: DSTextType.BODY_SMALL,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      DSText(
                                        'Exemplo 2',
                                        type: DSTextType.BODY_SMALL,
                                      ),
                                      DSText(
                                        r'R$ 150,00',
                                        type: DSTextType.BODY_SMALL,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      DSText(
                                        'Exemplo 3',
                                        type: DSTextType.BODY_SMALL,
                                      ),
                                      DSText(
                                        r'R$ -100,00',
                                        type: DSTextType.BODY_SMALL,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  DSDivider(),
                                  const SizedBox(height: 10),

                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      DSText(
                                        'Total da Compra:',
                                        type: DSTextType.NUMBER,
                                      ),
                                      DSText(
                                        r'R$ 51,00',
                                        type: DSTextType.NUMBER,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 24),
                                  Container(
                                    padding: const EdgeInsets.all(
                                      kLayoutSpacerXXS,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: DSColors.neutral.s88),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        DSText(
                                          'Forma de Pagamentos',
                                          type: DSTextType.NUMBER_SMALL,
                                        ),
                                        const SizedBox(
                                            height: kLayoutSpacerXXS),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                color: DSColors.neutral.s100,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8),
                                                child: SizedBox.fromSize(
                                                  size: const Size.fromRadius(
                                                      12), //
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
                                                  theme: const DSTextTheme(
                                                      fontSize: 12),
                                                ),
                                                const SizedBox(height: 6),
                                                DSText(
                                                  'Mastercard **** 1212',
                                                  type: DSTextType.BODY_SMALL,
                                                  theme: DSTextTheme(
                                                      fontSize: 12,
                                                      textColor:
                                                          DSColors.neutral.s46),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: kLayoutSpacerXXS),
                                  Container(
                                    padding:
                                        const EdgeInsets.all(kLayoutSpacerXXS),
                                    decoration: BoxDecoration(
                                      color: Colors.grey.shade200,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(
                                          color: DSColors.neutral.s88),
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        DSText(
                                          'Dados Pessoais',
                                          type: DSTextType.NUMBER_SMALL,
                                        ),
                                        const SizedBox(
                                            height: kLayoutSpacerXXS),
                                        Row(
                                          children: <Widget>[
                                            Container(
                                              decoration: BoxDecoration(
                                                color: DSColors.neutral.s100,
                                                shape: BoxShape.circle,
                                              ),
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(8),
                                                child: SizedBox.fromSize(
                                                  size: const Size.fromRadius(
                                                      12), //
                                                  child: const Icon(
                                                      Icons.person_pin_rounded),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: <Widget>[
                                                DSText(
                                                  'Fernando Kendy Yahiro',
                                                  type: DSTextType.NUMBER_SMALL,
                                                  theme: const DSTextTheme(
                                                      fontSize: 12),
                                                ),
                                                const SizedBox(height: 6),
                                                DSText(
                                                  '***.955.***-**',
                                                  type: DSTextType.BODY_SMALL,
                                                  theme: DSTextTheme(
                                                      fontSize: 12,
                                                      textColor:
                                                          DSColors.neutral.s46),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  // ListView.separated(
                                  //   shrinkWrap: true,
                                  //   separatorBuilder:
                                  //       (BuildContext context,
                                  //           int index) {
                                  //     return const SizedBox(
                                  //         height: kLayoutSpacerXS);
                                  //   },
                                  //   itemCount: AppClient()
                                  //       .shoppingCart
                                  //       .items
                                  //       .length,
                                  //   itemBuilder:
                                  //       (BuildContext context,
                                  //           int index) {
                                  //     return Row(
                                  //       mainAxisAlignment:
                                  //           MainAxisAlignment
                                  //               .spaceBetween,
                                  //       children: <DSText>[
                                  //         DSText(
                                  //           AppClient()
                                  //               .shoppingCart
                                  //               .items[index]
                                  //               .product
                                  //               .name,
                                  //           type: DSTextType.NUMBER,
                                  //         ),
                                  //         DSText(
                                  //           'R\$ ${NumberFormat.currency(locale: 'br', symbol: '').format(AppClient().shoppingCart.items[index].priceFinal)}',
                                  //           type: DSTextType.NUMBER,
                                  //         ),
                                  //       ],
                                  //     );
                                  //   },
                                  // ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () =>
                          Navigator.of(context).pushNamedAndRemoveUntil(
                        ListOfPurchasedProductsPage.routeName,
                        (_) => false,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: kLayoutSpacerXXS,
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(kLayoutSpacerXS),
                          decoration: BoxDecoration(
                            color: DSColors.neutral.s100,
                            borderRadius:
                                BorderRadius.circular(kLayoutSpacerXXXS),
                            border: Border.all(
                              color: DSColors.primary.base,
                            ),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: DSColors.neutral.s88,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 10.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Container(
                                    decoration: BoxDecoration(
                                      color: DSColors.primary.lighter,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8),
                                      child: SizedBox.fromSize(
                                        size: const Size.fromRadius(12), //
                                        child: const Icon(
                                          Icons.shopping_basket_rounded,
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
                                        'Produtos já adquiridos',
                                        type: DSTextType.NUMBER_SMALL,
                                      ),
                                      const SizedBox(height: 6),
                                      DSText(
                                        'Veja suas compras efetuadas',
                                        type: DSTextType.BODY_SMALL,
                                        theme: DSTextTheme(
                                          fontSize: 12,
                                          textColor: DSColors.neutral.s46,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Icon(
                                Icons.arrow_forward_ios_rounded,
                                size: kLayoutSpacerXS,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Center(
                    //   child: LoadingAnimationWidget.staggeredDotsWave(
                    child: LoadingAnimationWidget.waveDots(
                      color: DSColors.primary.base,
                      size: 36,
                    ),
                  ),
                  DSText(
                    'Carregando a compra',
                    type: DSTextType.NUMBER,
                  )
                ],
              ),
      ),
    );
  }
}
