import 'package:events_time_app_client/src/features/auth/presentation/perfil_page.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';
import 'package:flutter_credit_card/credit_card_brand.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class CardsPage extends StatefulWidget {
  static String routeName = '/cards-page';
  const CardsPage({super.key});

  @override
  State<CardsPage> createState() => _CartoesPageState();
}

class _CartoesPageState extends State<CardsPage>
    with SingleTickerProviderStateMixin {
  late String cardNumber = '';
  late String expiryDate = '';
  late String cardHolderName = '';
  late String cvvCode = '';
  late bool isCvvFocused = false;
  late bool useGlassMorphism = false;
  late bool useBackgroundImage = false;
  OutlineInputBorder? border;

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();
    border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.withOpacity(0.7),
        width: 2.0,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    void onValidate() {
      if (formKey.currentState!.validate()) {
        print('valid!');
      } else {
        print('invalid!');
      }
    }

    void onCreditCardModelChange(CreditCardModel? creditCardModel) {
      print(cardNumber);
      setState(() {
        cardNumber = creditCardModel!.cardNumber;
        expiryDate = creditCardModel.expiryDate;
        cardHolderName = creditCardModel.cardHolderName;
        cvvCode = creditCardModel.cvvCode;
        isCvvFocused = creditCardModel.isCvvFocused;
      });
    }

    return Scaffold(
      backgroundColor: DSColors.neutral.s72,
      appBar: AppBar(
        leading: DSIconButton(
            icon: Icons.arrow_back_ios_new_rounded, onPressed: () {}),
        backgroundColor: Theme.of(context).colorScheme.onSecondary,
        title: DSText(
          'CARTÕES',
          type: DSTextType.BODY_CAPTION,
          theme: const DSTextTheme(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 30,
                ),
                CreditCardWidget(
                  glassmorphismConfig:
                      useGlassMorphism ? Glassmorphism.defaultConfig() : null,
                  cardNumber: cardNumber,
                  expiryDate: expiryDate,
                  cardHolderName: cardHolderName,
                  cvvCode: cvvCode,
                  bankName: 'Events Bank',
                  frontCardBorder:
                      !useGlassMorphism ? Border.all(color: Colors.grey) : null,
                  backCardBorder:
                      !useGlassMorphism ? Border.all(color: Colors.grey) : null,
                  showBackView: isCvvFocused,
                  obscureCardCvv: true,
                  isHolderNameVisible: true,
                  cardBgColor: DSColors.tertiary.dark,
                  isSwipeGestureEnabled: true,
                  onCreditCardWidgetChange:
                      (CreditCardBrand creditCardBrand) {},
                  customCardTypeIcons: <CustomCardTypeIcon>[
                    CustomCardTypeIcon(
                      cardType: CardType.mastercard,
                      cardImage: Image.asset(
                        'assets/images/mastercard.png',
                        height: 48,
                        width: 48,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[
                        CreditCardForm(
                          formKey: formKey,
                          obscureCvv: true,
                          obscureNumber: true,
                          cardNumber: cardNumber,
                          cvvCode: cvvCode,
                          isHolderNameVisible: true,
                          isCardNumberVisible: true,
                          isExpiryDateVisible: true,
                          cardHolderName: cardHolderName,
                          expiryDate: expiryDate,
                          themeColor: Colors.blue,
                          textColor: DSColors.neutral.s72,
                          cardNumberDecoration: InputDecoration(
                            labelText: 'Número do Cartão',
                            hintText: 'XXXX XXXX XXXX XXXX',
                            hintStyle: TextStyle(color: DSColors.neutral.s72),
                            labelStyle: TextStyle(color: DSColors.neutral.s72),
                            focusedBorder: border,
                            enabledBorder: border,
                          ),
                          expiryDateDecoration: InputDecoration(
                            hintStyle: TextStyle(color: DSColors.neutral.s72),
                            labelStyle: TextStyle(color: DSColors.neutral.s72),
                            focusedBorder: border,
                            enabledBorder: border,
                            labelText: 'Validade',
                            hintText: 'XX/XX',
                          ),
                          cvvCodeDecoration: InputDecoration(
                            hintStyle: TextStyle(color: DSColors.neutral.s72),
                            labelStyle: TextStyle(color: DSColors.neutral.s72),
                            focusedBorder: border,
                            enabledBorder: border,
                            labelText: 'CVV',
                            hintText: 'XXX',
                          ),
                          cardHolderDecoration: InputDecoration(
                            hintStyle: TextStyle(color: DSColors.neutral.s72),
                            labelStyle: TextStyle(color: DSColors.neutral.s72),
                            focusedBorder: border,
                            enabledBorder: border,
                            labelText: 'Nome do Titular',
                          ),
                          onCreditCardModelChange: onCreditCardModelChange,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        // Padding(
                        //   padding: const EdgeInsets.symmetric(horizontal: 16),
                        //   child: Row(
                        //     mainAxisAlignment: MainAxisAlignment.center,
                        //     children: <Widget>[
                        //       const Text(
                        //         'Card Image',
                        //         style: TextStyle(
                        //           color: DSColors.neutral.s72,
                        //           fontSize: 18,
                        //         ),
                        //       ),
                        //       const Spacer(),
                        //       Switch(
                        //         value: useBackgroundImage,
                        //         inactiveTrackColor: Colors.grey,
                        //         activeColor: DSColors.neutral.s72,
                        //         activeTrackColor: DSColors.secondary.dark,
                        //         onChanged: (bool value) => setState(() {
                        //           useBackgroundImage = value;
                        //         }),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        const SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: DSButtonBar.withTwoButtons(
        primaryButtonText: 'Salvar',
        primaryOnPressed: () {
          Navigator.of(context).pushNamed(PerfilPage.routeName);
        },
        secondaryButtonText: 'Cancelar',
        secondaryOnPressed: () {
          Navigator.of(context).pushNamed(PerfilPage.routeName);
        },
      ),
    );
  }
}
