import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/increment_item_widget.dart';
import 'package:events_time_app_client/src/features/auth/presentation/pages/steps/shopping_cart_page.dart';
import 'package:events_time_app_client/src/features/commons/utils/strings/assets_images_strings.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/widgets/example_category_section.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/widgets/example_data.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';
import 'package:scroll_to_index/scroll_to_index.dart';
import 'package:vertical_scrollable_tabview/vertical_scrollable_tabview.dart';

class MenuPage extends StatefulWidget {
  static String routeName = '/menu-page';
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage>
    with SingleTickerProviderStateMixin {
  final List<Category> data = ExampleData.data;

  late TabController tabController;
  int count = 0;

  double priceProduct = 200.00;
  double calculate = 0;
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
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DSNavBar(
        leading: DSIconButton(
          icon: Icons.arrow_back_ios,
          onPressed: () {},
          theme: DSIconButtonTheme(iconPadding: 0, buttonSize: 0),
        ),
      ),
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
            backgroundColor: DSColors.chart02.base,
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
              indicatorColor: DSColors.primary.base,
              labelColor: DSColors.primary.base,
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
          color: DSColors.neutral.s100,
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              DSButtonBar.withText(
                value: r'R$ 16.000,00',
                caption: 'Valor da compra',
                primaryButtonText: 'Ver Sacola',
                primaryOnPressed: () {
                  DSBottomSheet(
                    size: DSBottomSheetSize.LARGE,
                    title: 'Sacola',
                    screenContext: context,
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          child: Expanded(
                            child: SizedBox(
                              height: 500,
                              child: ListView.separated(
                                separatorBuilder: (context, index) {
                                  return Column(
                                    children: [
                                      SizedBox(
                                        height: kLayoutSpacerXS,
                                      ),
                                      DSDivider(
                                        theme: DSDividerTheme(
                                            color: DSColors.neutral.s72),
                                      ),
                                      SizedBox(
                                        height: kLayoutSpacerXS,
                                      ),
                                    ],
                                  );
                                },
                                shrinkWrap: true,
                                itemCount: 12,
                                itemBuilder: (context, i) {
                                  return Column(
                                    children: [
                                      Row(
                                        children: [
                                          Image.asset(
                                            AssetsImagesStrings.outback,
                                            fit: BoxFit.cover,
                                            height: 90,
                                            width: 120,
                                          ),
                                          const SizedBox(width: 16),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                DSText(
                                                  'Título do Outback',
                                                  type: DSTextType.NUMBER,
                                                ),
                                                const SizedBox(height: 8),
                                                DSText(
                                                  'Subtítulo do Outback asas as as as as as s aaaaaaaaaaaa as as as as a saassas as ',
                                                  type: DSTextType.LABEL_SMALL,
                                                ),
                                                const SizedBox(height: 10),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          DSText(
                                            r'R$ 25,00',
                                            type: DSTextType.NUMBER,
                                          ),
                                          IncrementItemWidget(count: count),
                                        ],
                                      )
                                    ],
                                  );
                                },
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: kLayoutSpacerS),
                        DSButton(
                          text: 'Próximo',
                          size: DSButtonSize.SMALL,
                          buttonStyle: DSButtonStyle.PRIMARY,
                          onPressed: () {
                            Navigator.of(context).pushNamed(
                              ShoppingCartPage.routeName,
                            );
                          },
                        ),
                      ],
                    ),
                  ).show();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
