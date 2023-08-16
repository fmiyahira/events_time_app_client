import 'package:events_time_app_client/src/features/auth/presentation/pages/perfil/widgets/increment_item_widget.dart';
import 'package:events_time_app_client/src/features/commons/utils/strings/assets_images_strings.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/view_product_page.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';
import 'example_data.dart';

class ExampleCategorySection extends StatelessWidget {
  const ExampleCategorySection({
    super.key,
    required this.category,
  });

  final Category category;

  void _viewProduct(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute<dynamic>(
        builder: (BuildContext context) => const ViewProductPage(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _viewProduct(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: kLayoutSpacerXS),
        margin: const EdgeInsets.only(bottom: kLayoutSpacerXS),
        color: DSColors.neutral.s100,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildSectionTileHeader(context),
            _buildFoodTileList(context),
          ],
        ),
      ),
    );
  }

  Widget _buildFoodTileList(BuildContext context) {
    return Column(
      children: List<Widget>.generate(
        category.foods.length,
        (int index) {
          final Food food = category.foods[index];
          final bool isLastIndex = index == category.foods.length - 1;
          return Column(
            children: [
              const SizedBox(height: kLayoutSpacerXS),
              Row(
                children: [
                  Image.asset(
                    AssetsImagesStrings.outback,
                    fit: BoxFit.cover,
                    height: 100,
                    width: 130,
                  ),
                  const SizedBox(width: kLayoutSpacerXS),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DSText(
                          'Título do Outback',
                          type: DSTextType.NUMBER,
                        ),
                        const SizedBox(height: kLayoutSpacerXXXS),
                        DSText(
                          'Barraca X',
                          type: DSTextType.NUMBER_SMALL,
                          color: DSColors.primary.base,
                        ),
                        const SizedBox(height: kLayoutSpacerXXXS),
                        DSText(
                          'Subtítulo do Outback asas as as as as as s aaaaaaaaaaaa as as as as a saassas as ',
                          type: DSTextType.LABEL_SMALL,
                        ),
                        const SizedBox(height: kLayoutSpacerXXXS),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: kLayoutSpacerXXS),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DSText(
                    r'R$ 25,00',
                    type: DSTextType.NUMBER,
                  ),
                  IncrementItemWidget(count: 0),
                ],
              ),
              const SizedBox(height: kLayoutSpacerXS),
              DSDivider(
                theme: DSDividerTheme(color: DSColors.neutral.s72),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildSectionTileHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: kLayoutSpacerXS),
        _sectionTitle(context),
        const SizedBox(height: kLayoutSpacerXXS),
      ],
    );
  }

  Widget _sectionTitle(BuildContext context) {
    return Row(
      children: <Widget>[
        DSText(category.title, type: DSTextType.HEADING3),
      ],
    );
  }

  Widget _buildFoodTile({
    required BuildContext context,
    required bool isLastIndex,
    required Food food,
  }) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                child: _buildFoodDetail(food: food, context: context),
              ),
            ),
            const SizedBox(width: kLayoutSpacerXXS),
            Expanded(child: Container(child: _buildFoodImage(food.imageUrl))),
          ],
        ),
        if (!isLastIndex)
          Divider(
            height: kLayoutSpacerXS,
            color: DSColors.neutral.s88,
          )
        else
          const SizedBox(height: kLayoutSpacerXXS)
      ],
    );
  }

  Widget _buildFoodImage(String url) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5), // Image border
      child: Image.asset(
        url,
        width: 110,
        height: 80,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _buildFoodDetail({
    required BuildContext context,
    required Food food,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        DSText(
          food.name,
          type: DSTextType.NUMBER,
        ),
        const SizedBox(height: kLayoutSpacerXS),
        DSText(
          food.description,
          type: DSTextType.BODY_SMALLER,
        ),
        const SizedBox(height: kLayoutSpacerXS),
        DSText(
          r'R$200,00',
          type: DSTextType.HEADING4,
        ),
      ],
    );
  }

  Widget _buildSectionHoteSaleIcon() {
    return Container(
      margin: const EdgeInsets.only(right: kLayoutSpacerXXXS),
      child: DSIconButton(
        icon: Icons.whatshot,
        style: DSIconButtonStyle.values.first,
        onPressed: () {},
      ),
    );
  }
}
