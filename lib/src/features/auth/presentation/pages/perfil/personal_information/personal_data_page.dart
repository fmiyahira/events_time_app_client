import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/contact_details/contact_details_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/personal_information/personal_information_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/option_personal_data_widget.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class PersonalDataPage extends StatefulWidget {
  static String routeName = '/personal-data-page';
  const PersonalDataPage({super.key});

  @override
  State<PersonalDataPage> createState() => _PersonalDataPageState();
}

class _PersonalDataPageState extends State<PersonalDataPage>
    with SingleTickerProviderStateMixin {
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
        title: DSText('Kendy Yahiro', type: DSTextType.NUMBER),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            OptionPersonalDataWidget(
              optionTitle: 'Informações Pessoais',
              optionSubtitle: 'Nome Completo e CPF',
              routeName: PersonalInformationPage.routeName,
            ),
            OptionPersonalDataWidget(
              optionTitle: 'Dados de Contato',
              optionSubtitle: 'E-mail e telefone de contato',
              routeName: ContactDetailsPage.routeName,
            ),
          ],
        ),
      ),
    );
  }
}
