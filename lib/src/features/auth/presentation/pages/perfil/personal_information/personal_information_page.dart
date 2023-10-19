import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class PersonalInformationPage extends StatefulWidget {
  static String routeName = '/personal-information-page';

  const PersonalInformationPage({super.key});

  @override
  State<PersonalInformationPage> createState() =>
      _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kLayoutSpacerS),
          child: Column(
            children: <Widget>[
              Expanded(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        DSText(
                          'Informações Pessoais',
                          type: DSTextType.HEADING2,
                        ),
                        const SizedBox(height: kLayoutSpacerXS),
                        DSTextField(
                          labelText: 'Nome',
                          keyboardType: TextInputType.text,
                          controller: TextEditingController(text: 'Kendy'),
                        ),
                        const SizedBox(height: kLayoutSpacerXS),
                        DSTextField(
                          labelText: 'Sobrenome',
                          keyboardType: TextInputType.text,
                          controller: TextEditingController(text: 'Yahiro'),
                        ),
                        const SizedBox(height: kLayoutSpacerXS),
                        DSTextField(
                          labelText: 'CPF',
                          keyboardType: TextInputType.number,
                          controller:
                              TextEditingController(text: '000.111.222-33'),
                        ),
                        const SizedBox(height: kLayoutSpacerXS),
                        const DSTextField(
                          labelText: 'Senha',
                          type: DSTextFieldType.PASSWORD,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        const SizedBox(height: kLayoutSpacerXS),
                        const DSTextField(
                          labelText: 'Confirma Senha',
                          type: DSTextFieldType.PASSWORD,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          DSButtonBar(primaryButtonText: 'Atualizar', primaryOnPressed: () {}),
    );
  }
}
