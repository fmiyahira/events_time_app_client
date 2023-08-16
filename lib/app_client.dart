import 'package:events_time_app_client/flavors.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/menu_page.dart';
import 'package:events_time_app_client/src/routes/routes.dart';
import 'package:events_time_microapp_auth/events_time_microapp_auth.dart';
import 'package:events_time_microapp_dependencies/events_time_microapp_dependencies.dart';
import 'package:events_time_microapp_hub/events_time_microapp_hub.dart';
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

  final GlobalKey<NavigatorState> mainNavigatorKey =
      GlobalKey<NavigatorState>();

  List<ISubApp> subAppsRegistered = <ISubApp>[
    MicroappAuth(
      microappAuthConfig: MicroappAuthConfig(
        authGoalEnum: AuthGoalEnum.client,
        destinationAfterLogin: MenuPage.routeName,
        destinationHome: MenuPage.routeName,
      ),
    ),
  ];

  late IInjector injector;
  late ILocalStorage localStorage;
  late IRequesting requesting;
  late MicroappHub hub;
  late Map<String, ValueNotifier<dynamic>> messengers;

  UserModel? userLogged;
  LoggedEventModel? loggedEvent;

  Future<void> initialize() async {
    WidgetsFlutterBinding.ensureInitialized();

    await initializeServices();

    await initializeSubApps();

    await registerDependencies();

    registerMessengersListeners();

    runApp(const MyApp());
  }

  Future<void> initializeServices() async {
    injector = AppInjector();
    localStorage = LocalStorageSembastImpl(
      await SembastImpl().openDatabase(),
    );
    requesting = Requesting(
      baseUrl: F.baseUrl,
      localStorage: localStorage,
    );
    hub = MicroappHub();

    messengers = <String, ValueNotifier<dynamic>>{
      'hub': hub,
    };
  }

  Future<void> initializeSubApps() async {
    for (final ISubApp subApp in subAppsRegistered) {
      final SubAppRegistration registration = subApp.register();

      if (registration.routes != null) allRoutes.addAll(registration.routes!);

      await subApp.initialize(
        requesting: requesting,
        injector: injector,
        localStorage: localStorage,
        mainNavigatorKey: mainNavigatorKey,
        messengers: messengers,
      );
    }
  }

  Future<void> registerDependencies() async {
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
  }

  void registerMessengersListeners() {
    MicroappAuth.hub.addListener(() {
      if (hub.value is ResponseUserLoggedHubState) {
        userLogged =
            (hub.value as ResponseUserLoggedHubState).payload as UserModel?;
        return;
      }

      if (hub.value is ResponseEventSelectedHubState) {
        loggedEvent = (hub.value as ResponseEventSelectedHubState).payload
            as LoggedEventModel?;
        return;
      }
    });
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
      navigatorKey: AppClient().mainNavigatorKey,
    );
  }
}
