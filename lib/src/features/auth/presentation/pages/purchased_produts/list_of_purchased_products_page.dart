import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';

class ListOfPurchasedProductsPage extends StatefulWidget {
  static String routeName = '/list-of-purchased-products-page';

  const ListOfPurchasedProductsPage({super.key});

  @override
  State<ListOfPurchasedProductsPage> createState() =>
      _ListOfPurchasedProductsPageState();
}

class _ListOfPurchasedProductsPageState
    extends State<ListOfPurchasedProductsPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  int? voucherSelected;
  @override
  void initState() {
    super.initState();

    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSColors.neutral.s100,
      appBar: DSNavBar(
          // leading: DSIconButton(
          //   icon: Icons.arrow_back_ios_new_rounded,
          //   onPressed: () => Navigator.of(context).pop(),
          //   theme: DSIconButtonTheme(iconPadding: 0, buttonSize: 0),
          // ),
          ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                DSText(
                  'Vouchers',
                  type: DSTextType.HEADING2,
                ),
                DSText(
                  'Peça o preparo das suas compras',
                  type: DSTextType.INPUT,
                ),
                TabBar(
                  dividerColor: DSColors.neutral.s24,
                  controller: tabController,
                  labelColor: DSColors.neutral.s24,
                  indicatorColor: DSColors.primary.base,
                  tabs: const <Widget>[
                    Tab(text: 'Disponíveis'),
                    Tab(text: 'Em Andamento'),
                  ],
                ),
              ]),
              const SizedBox(height: kLayoutSpacerXXS),
              Expanded(
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int i) {
                    return InkWell(
                      onTap: () => {
                        setState(() {
                          voucherSelected = i;
                        }),
                        DSBottomSheet(
                          screenContext: context,
                          scrollEnabled: false,
                          onDismiss: () {
                            setState(() {
                              voucherSelected = -1;
                            });
                          },
                          title: 'Código #${i.toString()}',
                          child: SizedBox(
                            height: 240,
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      DSText(
                                        'Deseja adicionar alguma observação?',
                                        type: DSTextType.BODY_SMALL,
                                      ),
                                      const SizedBox(height: kLayoutSpacerXS),
                                      const DSTextField(maxLines: 5),
                                    ],
                                  ),
                                ),
                                DSButton(
                                  size: DSButtonSize.SMALL,
                                  text: 'Solicitar preparo',
                                  onPressed: () {
                                    Navigator.pop(context);
                                    DSDialog(
                                      type: DSDialogType.SUCCESS,
                                      parentContext: context,
                                      title: 'Confirmado o preparo!',
                                      message:
                                          'Pedido sendo preparado, aguarde um instante',
                                      buttonOnPressed: () => {
                                        Navigator.of(context).pop(),
                                        setState(() {
                                          voucherSelected = -1;
                                        }),
                                      },
                                      buttonText: 'Ok',
                                    ).show();
                                  },
                                  buttonStyle: DSButtonStyle.PRIMARY,
                                ),
                              ],
                            ),
                          ),
                        ).show()
                      },
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: kLayoutSpacerXXS),
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: DSColors.neutral.s100,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: voucherSelected == i
                                    ? DSColors.primary.base
                                    : DSColors.neutral.s88),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: DSColors.neutral.s88,
                                offset: const Offset(
                                  5.0,
                                  5.0,
                                ),
                                blurRadius: 3.0,
                                spreadRadius: 2.0,
                              ), //BoxShadow
                            ],
                          ),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Image.asset(
                                    'assets/images/ribs.jpg',
                                    height: 70,
                                    width: 100,
                                  ),
                                  const SizedBox(width: 8),
                                  Expanded(
                                    child: Column(
                                      children: <Widget>[
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            DSText(
                                              'Barraca Exemplo de Teste ${i}',
                                              type: DSTextType.LABEL,
                                              theme: const DSTextTheme(
                                                  fontSize: kComponentSpacerM),
                                            ),
                                            DSText(
                                              '#${i}',
                                              type: DSTextType.NUMBER_SMALL,
                                              theme: DSTextTheme(
                                                fontSize: kComponentSpacerM,
                                                textColor: DSColors.neutral.s46,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            DSText(
                                              'Comida ${i}',
                                              type: DSTextType.NUMBER,
                                              color: DSColors.primary.base,
                                              theme: DSTextTheme(
                                                fontSize: 10,
                                                textColor: DSColors.neutral.s46,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            DSText(
                                              'Ver mais',
                                              type: DSTextType.LABEL_SMALL,
                                              color: DSColors.error.base,
                                              theme: DSTextTheme(
                                                fontSize: kComponentSpacerM,
                                                textColor: DSColors.neutral.s46,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              // SizedBox(height: i != 2 ? 10 : 5),
                              // DSText(
                              //     i != 2
                              //         ? 'Preparando pedido...'
                              //         : 'Pedido pronto para retirar!',
                              //     type: DSTextType.BODY_SMALLER),
                              // const SizedBox(height: 5),
                              // if (i != 2)
                              //   LinearProgressBar(
                              //     maxSteps: 6,
                              //     progressType:
                              //         LinearProgressBar.progressTypeLinear,
                              //     currentStep: i,
                              //     progressColor: DSColors.success.base,
                              //     backgroundColor: DSColors.neutral.s88,
                              //     // valueColor:
                              //     //     AlwaysStoppedAnimation<Color>(Colors.red),
                              //     semanticsLabel: "Label",
                              //     semanticsValue: "Value",
                              //     minHeight: 3,
                              //   ),
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
