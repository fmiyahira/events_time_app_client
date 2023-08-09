import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/option_balance_widget.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/purchase_widget.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/ticket_event_participation_widget.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class CashBalancePage extends StatefulWidget {
  static String routeName = '/cash-balance-page';
  const CashBalancePage({super.key});

  @override
  State<CashBalancePage> createState() => _CashBalancetate();
}

class _CashBalancetate extends State<CashBalancePage>
    with SingleTickerProviderStateMixin {
  bool showBalance = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSColors.neutral.s100,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Column(
              children: [
                DSText(
                  'SALDOS E CARTÕES',
                  type: DSTextType.BODY_CAPTION,
                  theme: const DSTextTheme(
                      fontWeight: FontWeight.w600, textColor: Colors.black),
                ),
              ],
            ),
            backgroundColor: DSColors.tertiary.light,
            floating: true,

            // flexibleSpace: FlexibleSpaceBar(
            //   title: DSText('SALDOS E CARTÕES', type: DSTextType.BODY_CAPTION),
            //   background: FlutterLogo(),
            // ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        DSText(
                          'Saldos estornados',
                          type: DSTextType.BODY_CAPTION,
                          theme: DSTextTheme(textColor: DSColors.neutral.s46),
                        ),
                        DSIconButton(
                          icon: showBalance
                              ? Icons.visibility
                              : Icons.visibility_off,
                          onPressed: () {
                            setState(() {
                              showBalance = !showBalance;
                            });
                          },
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    DSText(
                      showBalance ? r'R$ 238,50' : '*******',
                      type: DSTextType.HEADING2,
                      theme: DSTextTheme(textColor: DSColors.neutral.s46),
                    ),
                    const SizedBox(height: 60),
                    const SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          OptionBalanceWidget(
                              icon: Icons.pix_rounded, titleIcon: 'PIX'),
                          OptionBalanceWidget(
                              icon: Icons.document_scanner_rounded,
                              titleIcon: 'Notas Fiscais'),
                          OptionBalanceWidget(
                              icon: Icons.document_scanner_rounded,
                              titleIcon: 'Notas Fiscais'),
                          OptionBalanceWidget(
                              icon: Icons.document_scanner_rounded,
                              titleIcon: 'Notas Fiscais'),
                          OptionBalanceWidget(
                              icon: Icons.document_scanner_rounded,
                              titleIcon: 'Notas Fiscais'),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 15),
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
                        child: Row(
                          children: <Widget>[
                            DSIconButton(
                              icon: Icons.credit_card_rounded,
                              onPressed: () {},
                              theme: DSIconButtonTheme(
                                  iconColor: DSColors.neutral.s46),
                            ),
                            const SizedBox(width: 10),
                            DSText(
                              'Meus Cartões',
                              type: DSTextType.NUMBER,
                              theme:
                                  DSTextTheme(textColor: DSColors.neutral.s46),
                            ),
                          ],
                        ),
                      ),
                      onTap: () {},
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
                          ),
                          Positioned(
                              left: -5,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              )),
                          Positioned(
                              right: -5,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              )),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 24, 0, 0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          TicketEventParticipationWidget(),
                          Positioned(
                              left: -5,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              )),
                          Positioned(
                              right: -5,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              )),
                        ],
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
                          ),
                          Positioned(
                              left: -5,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              )),
                          Positioned(
                              right: -5,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              )),
                        ],
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
                          ),
                          Positioned(
                              left: -5,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              )),
                          Positioned(
                              right: -5,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
