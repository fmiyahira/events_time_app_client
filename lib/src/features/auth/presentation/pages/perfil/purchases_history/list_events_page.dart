import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/purchases_history/widgets/event_option_widget.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class ListEventsPage extends StatefulWidget {
  static String routeName = '/list-events-page';
  const ListEventsPage({super.key});

  @override
  State<ListEventsPage> createState() => _ListEventsPageState();
}

class _ListEventsPageState extends State<ListEventsPage>
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
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kLayoutSpacerS),
                child: Row(
                  children: [
                    DSText(
                      'Histórico de eventos',
                      type: DSTextType.HEADING2,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 6,
                  itemBuilder: (BuildContext context, int i) {
                    return const EventOptionWidget();
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
