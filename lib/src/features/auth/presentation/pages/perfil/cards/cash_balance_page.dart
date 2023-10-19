import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/option_balance_widget.dart';
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
      appBar: DSNavBar(
        leading: DSIconButton(
          icon: Icons.arrow_back_ios_new_rounded,
          onPressed: () => Navigator.of(context).pop(),
          theme: DSIconButtonTheme(iconPadding: 0, buttonSize: 0),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kLayoutSpacerS),
              child: DSText(
                'Saldos e Cartões',
                type: DSTextType.HEADING2,
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kLayoutSpacerS),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  DSText(
                    'Saldos estornados',
                    type: DSTextType.BODY_CAPTION,
                    theme: DSTextTheme(textColor: DSColors.neutral.s46),
                  ),
                  DSIconButton(
                    icon: showBalance ? Icons.visibility : Icons.visibility_off,
                    onPressed: () {
                      setState(() {
                        showBalance = !showBalance;
                      });
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kLayoutSpacerS),
              child: DSText(
                showBalance ? r'R$ 238,50' : '*******',
                type: DSTextType.HEADING3,
              ),
            ),
            const SizedBox(height: 60),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: kLayoutSpacerS),
                child: Row(
                  children: <Widget>[
                    OptionBalanceWidget(
                      icon: Icons.pix_rounded,
                      titleIcon: 'PIX',
                    ),
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
            ),
            const SizedBox(height: 24),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kLayoutSpacerS),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                decoration: BoxDecoration(
                  color: DSColors.primary.light,
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
                child: InkWell(
                  child: Row(
                    children: <Widget>[
                      DSIconButton(
                        icon: Icons.credit_card_rounded,
                        onPressed: () {},
                        theme:
                            DSIconButtonTheme(iconColor: DSColors.neutral.s46),
                      ),
                      const SizedBox(width: 10),
                      DSText(
                        'Meus Cartões',
                        type: DSTextType.NUMBER,
                        theme: DSTextTheme(textColor: DSColors.neutral.s46),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
