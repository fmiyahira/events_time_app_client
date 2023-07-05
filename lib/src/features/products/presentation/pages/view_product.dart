import 'package:events_time_app_client/src/design_system/colors.dart';
import 'package:events_time_app_client/src/features/commons/utils/strings/assets_images_strings.dart';
import 'package:events_time_app_client/src/features/products/presentation/pages/widgets/action_positioned_top.dart';
import 'package:flutter/material.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({super.key});

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  int count = 0;
  double priceProduct = 200.00;
  double calculate = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'JUNIOR RIBS FOR TWO',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Restam somente 5 pratos',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, color: Colors.red),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Text(
                              'Duas Junior Ribs servidas com dois acompanhamentos, perfeitas para quem está em dupla. Combine com um dos nossos molhos: Barbecue ou Billabong. Acrescente um acompanhamento extra com um preço especial.',
                              softWrap: true,
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      TextField(
                        minLines: 3, // Set this
                        maxLines: 6, // and this
                        keyboardType: TextInputType.multiline,
                      )
                    ],
                  ),
                ),
              ],
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
                    border: Border.all(color: AppColors.weakColor, width: 2),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 5,
                    vertical: 5,
                  ),
                  child: Row(
                    children: <Widget>[
                      InkWell(
                        child: Icon(Icons.remove,
                            color: count > 0
                                ? AppColors.mainColor
                                : Colors.black26),
                        onTap: () => setState(() {
                          if (count == 0) return;
                          count--;
                          calculate = count * priceProduct;
                        }),
                      ),
                      const SizedBox(width: 10),
                      Text('${count}'),
                      const SizedBox(width: 10),
                      InkWell(
                        child: Icon(
                          Icons.add,
                          color: AppColors.mainColor,
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
                          children: [
                            const Text('Adicionar'),
                            Text(
                                '${(calculate).toStringAsFixed(2).replaceAll('.', ',')}'),
                          ],
                        ),
                      )),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
