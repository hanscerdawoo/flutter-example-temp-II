import 'package:app_dev/shared/models/product.dart';
import 'package:app_dev/shared/widgets/custom_app_bar.dart';
import 'package:app_dev/shared/widgets/custom_card.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> productArray = [
      Product(
        image: 'https://picsum.photos/id/21/600/400',
        nameProduct: 'Zapatilla Runner Pro',
        description: 'Ligera y cómoda, ideal para correr todos los días.',
        price: 89.90,
      ),
      Product(
        image: 'https://picsum.photos/id/26/600/400',
        nameProduct: 'Zapatilla Urbana Classic',
        description: 'Estilo casual para llevar a la universidad o al trabajo.',
        price: 64.50,
      ),
    ];
    return Scaffold(
      appBar: CustomAppBar(titleAppBar: 'Tienda en linea'),
      body: ListView.builder(
        itemCount: productArray.length,
        itemBuilder: (context, index) {
          var product = productArray[index];
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: CustomCard(product: product),
          );
        },
      ),
    );
  }
}
