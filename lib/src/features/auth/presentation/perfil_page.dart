import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/cash_balance_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/personal_data_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/purchases_history_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/option_perfil_widget.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  static String routeName = '/perfil-page';
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSColors.neutral.s100,
      appBar: AppBar(
        leading: DSIconButton(
          icon: Icons.arrow_back_ios_new_rounded,
          onPressed: () {},
        ),
        backgroundColor: DSColors.tertiary.light,
        title: DSText(
          'Kendy Yahiro',
          type: DSTextType.BODY,
          theme: const DSTextTheme(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          OptionPageWidget(
              optionSubtitle: 'Meus Dados',
              optionTitle: 'Minhas informações da conta',
              routeName: PersonalDataPage.routeName,
              icon: Icons.recent_actors_rounded),
          OptionPageWidget(
              optionSubtitle: 'Histórico de Compras',
              optionTitle: 'Minhas antigas compras',
              routeName: PurchasesHistoryPage.routeName,
              icon: Icons.history_rounded),
          OptionPageWidget(
              optionSubtitle: 'Pagamentos',
              optionTitle: 'Meus saldos e cartões',
              routeName: CashBalancePage.routeName,
              icon: Icons.credit_card_rounded),
        ],
      ),
    );
  }
}
