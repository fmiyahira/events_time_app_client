import 'package:events_time_app_client/src/features/commons/utils/strings/assets_images_strings.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/widgets/action_positioned_top.dart';
import 'package:events_time_microapp_ds/events_time_microapp_ds.dart';
import 'package:flutter/material.dart';

class ViewProductPage extends StatefulWidget {
  static String routeName = '/view-product-page';

  const ViewProductPage({super.key});

  @override
  State<ViewProductPage> createState() => _ViewProductPageState();
}

class _ViewProductPageState extends State<ViewProductPage> {
  int count = 0;
  double priceProduct = 200.00;
  double calculate = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Stack(
                    alignment: Alignment.bottomCenter,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              height: 300.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(AssetsImagesStrings.ribs),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const ActionPositionedTop(),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 24, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        DSText(
                          'JUNIOR RIBS FOR TWO',
                          type: DSTextType.HEADING3,
                        ),
                        // DSText(
                        //   'Restam somente 5 pratos',
                        //   type: DSTextType.BODY_SMALL,
                        // ),
                        const SizedBox(height: 20),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: DSText(
                                'Duas Junior Ribs servidas com dois acompanhamentos, perfeitas para quem está em dupla. Combine com um dos nossos molhos: Barbecue ou Billabong. Acrescente um acompanhamento extra com um preço especial.',
                                type: DSTextType.BODY_SMALL,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 20),
                        const DSTextField(
                          keyboardType: TextInputType.multiline,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              border: Border.all(color: Colors.grey.shade200, width: 2),
            ),
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: DSColors.primary.base, width: 2),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: DSIconButton(
                          icon: Icons.remove,
                          theme: DSIconButtonTheme(
                            iconColor: count > 0
                                ? DSColors.primary.base
                                : DSColors.primary.light,
                          ),
                          onPressed: () {},
                        ),
                        onTap: () => setState(() {
                          if (count == 0) return;
                          count--;
                          calculate = count * priceProduct;
                        }),
                      ),
                      const SizedBox(width: 10),
                      DSText(
                        '${count}',
                        type: DSTextType.LABEL,
                      ),
                      const SizedBox(width: 10),
                      InkWell(
                        child: DSIconButton(
                          icon: Icons.add,
                          theme: DSIconButtonTheme(
                            iconColor: DSColors.primary.base,
                          ),
                          onPressed: () {},
                        ),
                        onTap: () => setState(() {
                          count++;
                          calculate = count * priceProduct;
                        }),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 50),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <DSText>[
                          DSText(
                            'Adicionar',
                            type: DSTextType.LABEL,
                          ),
                          DSText(
                            '${(calculate).toStringAsFixed(2).replaceAll('.', ',')}',
                            type: DSTextType.LABEL,
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
