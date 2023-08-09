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
      appBar: AppBar(
        leading: DSIconButton(
          icon: Icons.arrow_back_ios_new_rounded,
          onPressed: () {},
          theme: DSIconButtonTheme(
            iconColor: DSColors.neutral.s88,
          ),
        ),
        backgroundColor: DSColors.tertiary.light,
        title: DSText(
          'MEUS DADOS',
          type: DSTextType.BODY_CAPTION,
          theme: DSTextTheme(
              fontWeight: FontWeight.w600, textColor: DSColors.neutral.s100),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            OptionPersonalDataWidget(
              optionTitle: 'Informações Pessoais',
              optionSubtitle: 'Nome Completo e CPF',
              routeName: PersonalDataPage.routeName,
            ),
            OptionPersonalDataWidget(
              optionTitle: 'Dados de Contato',
              optionSubtitle: 'E-mail e telefone de contato',
              routeName: PersonalDataPage.routeName,
            ),
            OptionPersonalDataWidget(
              optionTitle: 'Credenciais',
              optionSubtitle: 'Dados de acesso à minha conta',
              routeName: PersonalDataPage.routeName,
            ),
          ],
        ),
      ),
    );
  }
}
