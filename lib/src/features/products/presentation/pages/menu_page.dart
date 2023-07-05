import 'package:events_time_app_client/src/design_system/colors.dart';
import 'package:events_time_app_client/src/features/commons/utils/strings/assets_images_strings.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/widgets/example_category_section.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/widgets/example_data.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vertical_scrollable_tabview/vertical_scrollable_tabview.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  final List<Category> data = ExampleData.data;

  // TabController More Information => https://api.flutter.dev/flutter/material/TabController-class.html
  late TabController tabController;

  // Instantiate scroll_to_index (套件提供的方法)
  late AutoScrollController autoScrollController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: data.length, vsync: this);
    autoScrollController = AutoScrollController();
  }

  @override
  void dispose() {
    tabController.dispose();
    autoScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    const TextStyle optionStyle =
        TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
    const List<Widget> _widgetOptions = <Widget>[
      MenuPage(),
      Text(
        'Carrinho',
        style: optionStyle,
      ),
      Text(
        'Perfil',
        style: optionStyle,
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      body: VerticalScrollableTabView(
        autoScrollController: autoScrollController,
        scrollbarThumbVisibility: false,
        tabController: tabController,
        listItemData: data,
        eachItemChild: (dynamic object, _) =>
            ExampleCategorySection(category: object as Category),
        slivers: <SliverAppBar>[
          SliverAppBar(
            pinned: true,
            stretch: true,
            expandedHeight: 190.0,
            backgroundColor: AppColors.weakColor,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: const EdgeInsets.only(bottom: 100),
              background: Image.asset(
                AssetsImagesStrings.outback,
                fit: BoxFit.cover,
              ),
              stretchModes: const <StretchMode>[
                StretchMode.blurBackground,
                StretchMode.fadeTitle
              ],
            ),
            bottom: TabBar(
              isScrollable: true,
              controller: tabController,
              indicatorPadding: const EdgeInsets.symmetric(horizontal: 16.0),
              indicatorColor: AppColors.mainColor,
              labelColor: AppColors.mainColor,
              unselectedLabelColor: Colors.white,
              indicatorWeight: 3.0,
              tabs: data.map((Category e) {
                return Tab(text: e.title);
              }).toList(),
              onTap: (int index) {
                VerticalScrollableTabBarStatus.setIndex(index);
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 12),
            child: GNav(
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              // activeColor: AppColor.colorMainStrong,
              // color: AppColor.colorMainStrong,
              tabs: const <GButton>[
                GButton(icon: LineAwesomeIcons.home, text: 'Menu'),
                GButton(icon: LineAwesomeIcons.heart, text: 'Buscar'),
                GButton(icon: LineAwesomeIcons.shopping_cart, text: 'Carrinho'),
                GButton(icon: LineAwesomeIcons.user, text: 'Perfil'),
              ],
              selectedIndex: selectedIndex,
              onTabChange: (int index) {
                setState(() {
                  selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
