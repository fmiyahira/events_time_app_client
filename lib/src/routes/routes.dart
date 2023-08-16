import 'package:events_time_app_client/src/features/auth/presentation/pages/cards/list_cards_register.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/cards_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/login_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/cash_balance_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/personal_data_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/purchases_history_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/splash_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/steps/shopping_cart_page.dart';
import 'package:events_time_app_client/src/features/auth/presentation/perfil_page.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/menu_page.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/view_product_page.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  String get initialRoute => MenuPage.routeName;

  Map<String, WidgetBuilder> get routes => <String, WidgetBuilder>{
        LoginPage.routeName: (BuildContext context) => const LoginPage(),
        MenuPage.routeName: (BuildContext context) => const MenuPage(),
        PerfilPage.routeName: (BuildContext context) => const PerfilPage(),
        ViewProductPage.routeName: (BuildContext context) =>
            const ViewProductPage(),
        PersonalDataPage.routeName: (BuildContext context) =>
            const PersonalDataPage(),
        CardsPage.routeName: (BuildContext context) => const CardsPage(),
        PurchasesHistoryPage.routeName: (BuildContext context) =>
            const PurchasesHistoryPage(),
        CashBalancePage.routeName: (BuildContext context) =>
            const CashBalancePage(),
        ShoppingCartPage.routeName: (BuildContext context) =>
            const ShoppingCartPage(),
        ListCardsRegister.routeName: (BuildContext context) =>
            const ListCardsRegister(),
        SplashPage.routeName: (BuildContext context) => const SplashPage()
      };
}
