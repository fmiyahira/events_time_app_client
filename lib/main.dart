import 'package:events_time_app_client/src/features/products/presentation/pages/menu_page.dart';
import 'package:events_time_app_client/src/routes/routes.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: AppRoutes().initialRoute,
      routes: AppRoutes().routes,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // int selectedIndex = 0;

    // const TextStyle optionStyle =
    //     TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
    // const List<Widget> widgetOptions = <Widget>[
    //   MenuPage(),
    //   Text(
    //     'Carrinho',
    //     style: optionStyle,
    //   ),
    //   Text(
    //     'Perfil',
    //     style: optionStyle,
    //   ),
    // ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: Center(
      //   child: widgetOptions.elementAt(selectedIndex),
      // ),
      // bottomNavigationBar: Container(
      //   decoration: BoxDecoration(
      //     color: DSColors.neutral.s100,
      //     boxShadow: <BoxShadow>[
      //       BoxShadow(
      //         blurRadius: 20,
      //         color: Colors.black.withOpacity(.1),
      //       )
      //     ],
      //   ),
      //   child: SafeArea(
      //     child: Padding(
      //       padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
      //       child: Column(
      //         mainAxisSize: MainAxisSize.min,
      //         children: <Widget>[
      //           Container(
      //             color: DSColors.secondary.base,
      //             child: DSText(
      //               'hasuhaush',
      //               type: DSTextType.HEADING1,
      //             ),
      //           ),
      //           GNav(
      //             rippleColor: DSColors.neutral.s96,
      //             hoverColor: DSColors.neutral.s96,
      //             gap: 8,
      //             iconSize: 24,
      //             padding:
      //                 const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      //             duration: const Duration(milliseconds: 400),
      //             tabBackgroundColor: DSColors.neutral.s96,
      //             // activeColor: AppColor.colorMainStrong,
      //             // color: AppColor.colorMainStrong,
      //             tabs: const <GButton>[
      //               GButton(icon: LineAwesomeIcons.home, text: 'Menu'),
      //               GButton(icon: LineAwesomeIcons.search, text: 'Buscar'),
      //               GButton(
      //                   icon: LineAwesomeIcons.alternate_ticket,
      //                   text: 'Vouchers'),
      //               GButton(icon: LineAwesomeIcons.user, text: 'Perfil'),
      //             ],
      //             selectedIndex: selectedIndex,
      //             onTabChange: (int index) {
      //               setState(() {
      //                 selectedIndex = index;
      //               });
      //             },
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
