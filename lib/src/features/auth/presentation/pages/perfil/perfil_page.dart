import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/cards/cash_balance_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/personal_information/personal_data_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/purchases_history/list_events_page.dart';
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
      appBar: DSNavBar(
        leading: Builder(
          builder: (BuildContext context) => DSIconButton(
            icon: Icons.arrow_back_ios_new_rounded,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kLayoutSpacerS),
              child: DSText(
                'Meus Dados',
                type: DSTextType.HEADING2,
              ),
            ),
            OptionPageWidget(
              optionSubtitle: 'Meus Dados',
              optionTitle: 'Minhas informações da conta',
              routeName: PersonalDataPage.routeName,
              icon: Icons.recent_actors_rounded,
            ),
            OptionPageWidget(
              optionSubtitle: 'Histórico de Compras',
              optionTitle: 'Minhas antigas compras',
              routeName: ListEventsPage.routeName,
              icon: Icons.history_rounded,
            ),
            OptionPageWidget(
              optionSubtitle: 'Pagamentos',
              optionTitle: 'Meus saldos e cartões',
              routeName: CashBalancePage.routeName,
              icon: Icons.credit_card_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
