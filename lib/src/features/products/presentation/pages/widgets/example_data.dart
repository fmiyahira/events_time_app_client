import 'package:events_time_app_client/src/features/commons/utils/strings/assets_images_strings.dart';

class ExampleData {
  ExampleData._internal();

  static List<String> images = <String>[
    'https://conteudo.imguol.com.br/c/galeria/3b/2021/05/25/o-soba-1621963583314_v2_450x337.jpg',
    'https://conteudo.imguol.com.br/c/galeria/3b/2021/05/25/o-soba-1621963583314_v2_450x337.jpg',
    'https://conteudo.imguol.com.br/c/galeria/3b/2021/05/25/o-soba-1621963583314_v2_450x337.jpg',
    'https://conteudo.imguol.com.br/c/galeria/3b/2021/05/25/o-soba-1621963583314_v2_450x337.jpg',
    'https://conteudo.imguol.com.br/c/galeria/3b/2021/05/25/o-soba-1621963583314_v2_450x337.jpg',
    'https://conteudo.imguol.com.br/c/galeria/3b/2021/05/25/o-soba-1621963583314_v2_450x337.jpg',
    'https://conteudo.imguol.com.br/c/galeria/3b/2021/05/25/o-soba-1621963583314_v2_450x337.jpg',
  ];

  static List<Category> data = <Category>[
    category1,
    category2,
    category3,
    category4,
    category5,
    category6,
    category7,
  ];

  static Category category1 = Category(
    title: 'Categoria 1',
    subtitle: 'Exemplo 1',
    isHotSale: true,
    foods: List<Food>.generate(
      5,
      (int index) {
        return Food(
          name: 'JUNIOR RIBS FOR TWO',
          price:
              'Duas Junior Ribs servidas com dois acompanhamentos, perfeitas para quem está em dupla. Combine com um dos nossos molhos: Barbecue ou Billabong. Acrescente um acompanhamento extra com um preço especial.',
          comparePrice: r'$ 198,00',
          imageUrl: AssetsImagesStrings.ribs,
          isHotSale: false,
        );
      },
    ),
  );

  static Category category2 = Category(
    title: 'Categoria 2',
    subtitle: 'Exemplo 2',
    isHotSale: true,
    foods: List<Food>.generate(
      5,
      (int index) {
        return Food(
          name: 'JUNIOR RIBS FOR TWO',
          price:
              'Duas Junior Ribs servidas com dois acompanhamentos, perfeitas para quem está em dupla. Combine com um dos nossos molhos: Barbecue ou Billabong. Acrescente um acompanhamento extra com um preço especial.',
          comparePrice: "\$250,00",
          imageUrl: AssetsImagesStrings.ribs,
          isHotSale: false,
        );
      },
    ),
  );

  static Category category3 = Category(
    title: 'Categoria 3',
    subtitle: 'Exemplo 3',
    isHotSale: true,
    foods: List<Food>.generate(
      5,
      (int index) {
        return Food(
          name: 'JUNIOR RIBS FOR TWO',
          price:
              'Duas Junior Ribs servidas com dois acompanhamentos, perfeitas para quem está em dupla. Combine com um dos nossos molhos: Barbecue ou Billabong. Acrescente um acompanhamento extra com um preço especial.',
          comparePrice: "\$250,00",
          imageUrl: AssetsImagesStrings.ribs,
          isHotSale: false,
        );
      },
    ),
  );

  static Category category4 = Category(
    title: 'Categoria 4',
    subtitle: 'Exemplo 4',
    isHotSale: true,
    foods: List<Food>.generate(
      5,
      (int index) {
        return Food(
          name: 'JUNIOR RIBS FOR TWO',
          price:
              'Duas Junior Ribs servidas com dois acompanhamentos, perfeitas para quem está em dupla. Combine com um dos nossos molhos: Barbecue ou Billabong. Acrescente um acompanhamento extra com um preço especial.',
          comparePrice: "\$250,00",
          imageUrl: AssetsImagesStrings.ribs,
          isHotSale: false,
        );
      },
    ),
  );

  static Category category5 = Category(
    title: 'Categoria 5',
    subtitle: 'Exemplo 5',
    isHotSale: true,
    foods: List<Food>.generate(
      5,
      (int index) {
        return Food(
          name: 'JUNIOR RIBS FOR TWO',
          price:
              'Duas Junior Ribs servidas com dois acompanhamentos, perfeitas para quem está em dupla. Combine com um dos nossos molhos: Barbecue ou Billabong. Acrescente um acompanhamento extra com um preço especial.',
          comparePrice: "\$250,00",
          imageUrl: AssetsImagesStrings.ribs,
          isHotSale: false,
        );
      },
    ),
  );

  static Category category6 = Category(
    title: 'Categoria 6',
    subtitle: 'Exemplo 6',
    isHotSale: true,
    foods: List<Food>.generate(
      5,
      (int index) {
        return Food(
          name: 'JUNIOR RIBS FOR TWO',
          price:
              'Duas Junior Ribs servidas com dois acompanhamentos, perfeitas para quem está em dupla. Combine com um dos nossos molhos: Barbecue ou Billabong. Acrescente um acompanhamento extra com um preço especial.',
          comparePrice: "\$250,00",
          imageUrl: AssetsImagesStrings.ribs,
          isHotSale: false,
        );
      },
    ),
  );

  static Category category7 = Category(
    title: 'Categoria 7',
    subtitle: 'Exemplo 7',
    isHotSale: true,
    foods: List<Food>.generate(
      5,
      (int index) {
        return Food(
          name: 'JUNIOR RIBS FOR TWO',
          price:
              'Duas Junior Ribs servidas com dois acompanhamentos, perfeitas para quem está em dupla. Combine com um dos nossos molhos: Barbecue ou Billabong. Acrescente um acompanhamento extra com um preço especial.',
          comparePrice: "\$250,00",
          imageUrl: AssetsImagesStrings.ribs,
          isHotSale: false,
        );
      },
    ),
  );
}

class Category {
  String title;
  String? subtitle;
  List<Food> foods;
  bool isHotSale;

  Category({
    required this.title,
    required this.subtitle,
    required this.foods,
    required this.isHotSale,
  });
}

class Food {
  String name;
  String price;
  String comparePrice;
  String imageUrl;
  bool isHotSale;

  Food({
    required this.name,
    required this.price,
    required this.comparePrice,
    required this.imageUrl,
    required this.isHotSale,
  });
}
