import 'package:events_time_app_client/src/features/auth/utils/strings/auth_strings.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/menu_page.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static String routeName = '/login';

  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DSColors.neutral.s100,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  // Image.asset(
                  //   AssetsImagesStrings.logo,
                  //   height: 250,
                  //   width: 250,
                  // ),
                  const SizedBox(height: 140),
                  Row(
                    children: <DSText>[
                      DSText(
                        AuthStrings.messageWelcome,
                        color: DSColors.primary.base,
                        type: DSTextType.HEADING1,
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  DSTextField(
                    labelText: AuthStrings.userField,
                    suffixIcon: Icon(
                      Icons.person_pin_rounded,
                      color: DSColors.primary.base,
                    ),
                    controller: loginController,
                  ),
                  // enabled: !authController.isLoginProcessing,
                  const SizedBox(height: 20),
                  DSTextField(
                    labelText: AuthStrings.passwordField,
                    type: DSTextFieldType.PASSWORD,
                    controller: passwordController,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Expanded(
                        child: DSLinkButton(
                          theme: DSLinkButtonTheme(
                            linkTextAlignment: AlignmentDirectional.centerEnd,
                          ),
                          size: DSLinkButtonSize.SMALL,
                          text: AuthStrings.forgetPassword,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  DSButton(
                    text: AuthStrings.accessLogin,
                    size: DSButtonSize.SMALL,
                    buttonStyle: DSButtonStyle.PRIMARY,
                    onPressed: () {
                      Navigator.of(context).pushNamed(MenuPage.routeName);
                    },
                  ),
                  const SizedBox(height: 12),
                  DSText(
                    AuthStrings.othersOptionsAccess,
                    color: Colors.black54,
                    type: DSTextType.HEADING4,
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          color: DSColors.primary.base,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DSIconButton(
                          icon: FontAwesomeIcons.facebookF,
                          style: DSIconButtonStyle.MILKED,
                          theme:
                              DSIconButtonTheme(buttonSize: 52, iconSize: 24),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: DSColors.primary.base,
                            borderRadius: BorderRadius.circular(10)),
                        child: DSIconButton(
                          icon: FontAwesomeIcons.twitter,
                          style: DSIconButtonStyle.MILKED,
                          theme:
                              DSIconButtonTheme(buttonSize: 52, iconSize: 24),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: DSColors.primary.base,
                            borderRadius: BorderRadius.circular(10)),
                        child: DSIconButton(
                          icon: FontAwesomeIcons.instagram,
                          style: DSIconButtonStyle.MILKED,
                          theme:
                              DSIconButtonTheme(buttonSize: 52, iconSize: 24),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  DSText(
                    AuthStrings.descriptionSignUp,
                    type: DSTextType.HEADING4,
                    color: Colors.black54,
                    textSpan: <DSTextSpan>[
                      DSTextSpan(
                        AuthStrings.messageSignUp,
                        color: DSColors.primary.dark,
                        fontWeight: FontWeight.w600,
                      ),
                    ],
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
