import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/divider_date_widget.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/purchase_widget.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class PurchasesHistoryPage extends StatefulWidget {
  static String routeName = '/history-page';
  const PurchasesHistoryPage({super.key});

  @override
  State<PurchasesHistoryPage> createState() => _PurchasesHistoryPageState();
}

class _PurchasesHistoryPageState extends State<PurchasesHistoryPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: DSColors.neutral.s100,
        appBar: DSNavBar(
          leading: DSIconButton(
            icon: Icons.arrow_back_ios_new_rounded,
            onPressed: () => Navigator.of(context).pop(),
            theme: DSIconButtonTheme(iconPadding: 0, buttonSize: 0),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kLayoutSpacerS),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        DSText(
                          'Histórico de compras',
                          type: DSTextType.HEADING2,
                        ),
                        DSText(
                          'Festival do Japão 3ª edição',
                          color: DSColors.primary.base,
                          type: DSTextType.HEADING4,
                        ),
                        const SizedBox(height: kLayoutSpacerXS),
                        const DividerDateWidget(),
                        const PurchaseWidget(),
                        const DividerDateWidget(),
                        const PurchaseWidget(),
                        const DividerDateWidget(),
                        const PurchaseWidget(),
                        const PurchaseWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
