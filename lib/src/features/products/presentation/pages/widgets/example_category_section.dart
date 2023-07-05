import 'package:events_time_app_client/src/design_system/colors.dart';
import 'package:events_time_app_client/src/features/commons/utils/strings/assets_images_strings.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/view_product.dart';
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
        builder: (BuildContext context) => const ViewProduct(),
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
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
        const SizedBox(height: 8.0),
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
        Text(
          category.title,
          style: _textTheme(context).headline6,
        )
      ],
    );
  }

  Widget _sectionSubtitle(BuildContext context) {
    return Text(
      category.subtitle!,
      style: _textTheme(context).subtitle2,
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
            color: Colors.grey[200],
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
        Text(food.name,
            style: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w800,
            )),
        const SizedBox(height: 16),
        Text(
          food.price,
          style: const TextStyle(
            color: Colors.black54,
            fontSize: 12,
          ),
        ),
        const SizedBox(height: 16),
        const Text(
          r'R$200,00',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ],
    );
  }

  Widget _buildSectionHoteSaleIcon() {
    return Container(
      margin: const EdgeInsets.only(right: 4.0),
      child: const Icon(
        Icons.whatshot,
        color: Colors.pink,
        size: 20.0,
      ),
    );
  }

  Widget _buildFoodHotSaleIcon() {
    return Container(
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        color: Colors.pink.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: const Icon(Icons.whatshot, color: Colors.pink, size: 16.0),
    );
  }

  TextTheme _textTheme(BuildContext context) => Theme.of(context).textTheme;
}
