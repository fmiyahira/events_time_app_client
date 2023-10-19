import 'package:events_time_app_client/src/features/auth/presentation/pages/cards/list_cards_register.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/cards/cards_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/cards/cash_balance_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/contact_details/contact_details_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/personal_information/personal_data_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/personal_information/personal_information_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/purchases_history/list_events_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/purchases_history/purchases_history_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/purchased_produts/list_of_purchased_products_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/steps/shopping_cart_checkout.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/steps/shopping_cart_resume_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/perfil_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  String get initialRoute => 'auth';

  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        PerfilPage.routeName: (BuildContext context) => const PerfilPage(),
        PersonalDataPage.routeName: (BuildContext context) =>
            const PersonalDataPage(),
        CardsPage.routeName: (BuildContext context) => const CardsPage(),
        PurchasesHistoryPage.routeName: (BuildContext context) =>
            const PurchasesHistoryPage(),
        CashBalancePage.routeName: (BuildContext context) =>
            const CashBalancePage(),
        ShoppingCartResumePage.routeName: (BuildContext context) =>
            const ShoppingCartResumePage(),
        ListCardsRegister.routeName: (BuildContext context) =>
            const ListCardsRegister(),
        ShoppingCartCheckout.routeName: (BuildContext context) =>
            const ShoppingCartCheckout(),
        ListOfPurchasedProductsPage.routeName: (BuildContext context) =>
            const ListOfPurchasedProductsPage(),
        PersonalInformationPage.routeName: (BuildContext context) =>
            const PersonalInformationPage(),
        ContactDetailsPage.routeName: (BuildContext context) =>
            const ContactDetailsPage(),
        ListEventsPage.routeName: (BuildContext context) =>
            const ListEventsPage(),
      };
}
