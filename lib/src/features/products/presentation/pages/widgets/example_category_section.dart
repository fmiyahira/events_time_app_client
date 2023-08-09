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
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        margin: const EdgeInsets.only(bottom: 16),
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
          return _buildFoodTile(
            food: food,
            context: context,
            isLastIndex: isLastIndex,
          );
        },
      ),
    );
  }

  Widget _buildSectionTileHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const SizedBox(height: 16),
        _sectionTitle(context),
        const SizedBox(height: 8),
        if (category.subtitle != null)
          _sectionSubtitle(context)
        else
          const SizedBox(),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _sectionTitle(BuildContext context) {
    return Row(
      children: <Widget>[
        if (category.isHotSale) _buildSectionHoteSaleIcon(),
        DSText(
          category.title,
          type: DSTextType.HEADING3,
        )
      ],
    );
  }

  Widget _sectionSubtitle(BuildContext context) {
    return DSText(
      category.subtitle!,
      type: DSTextType.HEADING4,
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
            const SizedBox(width: 10),
            Expanded(child: Container(child: _buildFoodImage(food.imageUrl))),
          ],
        ),
        if (!isLastIndex)
          Divider(
            height: 16.0,
            color: DSColors.neutral.s88,
          )
        else
          const SizedBox(height: 8.0)
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
        const SizedBox(height: 16),
        DSText(
          food.description,
          type: DSTextType.BODY_SMALLER,
          theme: const DSTextTheme(fontSize: 13),
        ),
        const SizedBox(height: 16),
        DSText(
          r'R$200,00',
          type: DSTextType.HEADING4,
        ),
      ],
    );
  }

  Widget _buildSectionHoteSaleIcon() {
    return Container(
      margin: const EdgeInsets.only(right: 4.0),
      child: DSIconButton(
        icon: Icons.whatshot,
        style: DSIconButtonStyle.values.first,
        onPressed: () {},
      ),
    );
  }
}
