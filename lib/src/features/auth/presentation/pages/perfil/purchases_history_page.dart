import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/enums/list_histories_filters_enum.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/purchase_widget.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/segment_button_history_choice_widget.dart';
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
        appBar: AppBar(
          leading: DSIconButton(
            icon: Icons.arrow_back_ios_new_rounded,
            onPressed: () {},
          ),
          backgroundColor: DSColors.tertiary.light,
          title: DSText(
            'HISTÓRICO DE COMPRAS',
            type: DSTextType.BODY_CAPTION,
            theme: DSTextTheme(
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: <Widget>[
                      SegmentedButtonChoiceWidget(
                        valueSelected: ListHistoriesFilters.valid,
                        onSelected: () async {},
                      ),
                      const PurchaseWidget(),
                      const PurchaseWidget(),
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
    );
  }
}
