import 'package:events_time_app_client/src/design_system/colors.dart';
import 'package:events_time_app_client/src/features/auth/utils/strings/auth_strings.dart';
import 'package:events_time_app_client/src/features/commons/utils/strings/assets_images_strings.dart';
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
  bool _passwordVisible = false;

  void _togglePassword() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    AssetsImagesStrings.logo,
                    height: 300,
                    width: 300,
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Text(
                        AuthStrings.messageWelcome,
                        style: TextStyle(
                          fontSize: 30,
                          color: AppColors.mainColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  TextFormField(
                    decoration: InputDecoration(
                      label: Text(AuthStrings.userField),
                      suffixIcon: Icon(
                        Icons.person_pin_rounded,
                        color: AppColors.mainColor,
                      ),
                    ),
                    controller: loginController,
                    // enabled: !authController.isLoginProcessing,
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      label: Text(AuthStrings.passwordField),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: AppColors.mainColor,
                        ),
                        onPressed: () {
                          _togglePassword();
                        },
                      ),
                    ),
                    controller: passwordController,
                    // enabled: !authController.isLoginProcessing,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        AuthStrings.forgetPassword,
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.mainColor,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  DSButton(
                    buttonText: AuthStrings.accessLogin,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 12),
                  Text(
                    AuthStrings.othersOptionsAccess,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 32),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.facebookF,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.twitter,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                            icon: const FaIcon(
                              FontAwesomeIcons.instagram,
                              color: Colors.white,
                            ),
                            onPressed: () {}),
                      ),
                    ],
                  ),
                  const SizedBox(height: 32),
                  RichText(
                    text: TextSpan(
                      children: <TextSpan>[
                        TextSpan(
                          text: AuthStrings.descriptionSignUp,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        TextSpan(
                          text: AuthStrings.messageSignUp,
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColors.mainColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
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
