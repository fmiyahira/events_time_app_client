import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class ContactDetailsPage extends StatefulWidget {
  static String routeName = '/contact-details-page';

  const ContactDetailsPage({super.key});

  @override
  State<ContactDetailsPage> createState() => _ContactDetailsPageState();
}

class _ContactDetailsPageState extends State<ContactDetailsPage> {
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
                          'Dados de Contato',
                          type: DSTextType.HEADING2,
                        ),
                        const SizedBox(height: kLayoutSpacerXXS),
                        DSText(
                          'Mantenha os dados atualizados para notificá-lo.',
                          type: DSTextType.BODY,
                        ),
                        const SizedBox(height: kLayoutSpacerXS),
                        DSTextField(
                          labelText: 'E-mail',
                          keyboardType: TextInputType.emailAddress,
                          controller: TextEditingController(
                            text: 'yahirokendy@gmail.com',
                          ),
                        ),
                        const SizedBox(height: kLayoutSpacerXS),
                        DSTextField(
                          labelText: 'Celular',
                          keyboardType: TextInputType.phone,
                          controller: TextEditingController(
                            text: '+55 (67) 9 9239-0892',
                          ),
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
