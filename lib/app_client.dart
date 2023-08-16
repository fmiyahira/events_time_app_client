import 'package:events_time_app_client/flavors.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/menu_page.dart';
import 'package:events_time_app_client/src/routes/routes.dart';
import 'package:events_time_microapp_auth/events_time_microapp_auth.dart';
import 'package:events_time_microapp_dependencies/events_time_microapp_dependencies.dart';
import 'package:flutter/material.dart';

class AppClient {
  static final AppClient _appClient = AppClient._internal();

  factory AppClient() {
    return _appClient;
  }

  AppClient._internal();

  Map<String, WidgetBuilder> allRoutes = <String, WidgetBuilder>{
    ...AppRoutes().routes,
  };

  List<ISubApp> subAppsRegistered = <ISubApp>[
    MicroappAuth(
      microappAuthConfig: MicroappAuthConfig(
        authGoalEnum: AuthGoalEnum.client,
        destinationAfterLogin: MenuPage.routeName,
        callbackAfterLogin: (UserModel userModel) {
          AppClient().userLogged = userModel;
        },
        callbackAfterLogout: () {
          AppClient().userLogged = null;
        },
      ),
    ),
  ];

  late IInjector injector;
  late ILocalStorage localStorage;
  late IRequesting requesting;

  UserModel? userLogged;

  Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    injector = AppInjector();
    localStorage = LocalStorageSembastImpl(
      await SembastImpl().openDatabase(),
    );
    requesting = Requesting(
      baseUrl: F.baseUrl,
      localStorage: localStorage,
    );

    for (final ISubApp subApp in subAppsRegistered) {
      final SubAppRegistration registration = subApp.register();

      if (registration.routes != null) allRoutes.addAll(registration.routes!);

      await subApp.initialize(
        requesting: requesting,
        injector: injector,
        localStorage: localStorage,
      );
    }

    // Register dependencies
    final List<IRegisterDependencies> listInternalDependencies =
        <IRegisterDependencies>[
      // RegisterDependenciesPlugins(),
      // RegisterDependenciesMenu(),
      // RegisterDependenciesConfiguration(),
    ];

    for (final IRegisterDependencies internalDependency
        in listInternalDependencies) {
      await internalDependency.register();
    }

    runApp(const MyApp());
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: <Flavor>[
        Flavor.hom,
        Flavor.dev,
      ].contains(F.appFlavor),
      title: F.title,
      initialRoute: AppRoutes().initialRoute,
      routes: AppClient().allRoutes,
    );
  }
}
