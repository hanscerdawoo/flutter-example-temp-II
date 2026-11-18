import 'package:app_dev/shared/models/product.dart';
import 'package:flutter/material.dart';

class CustomCard extends StatelessWidget {
  final Product product;

  const CustomCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Card(
      elevation: 4.0,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network(
            product.image,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 180,
                color: Colors.grey.shade300,
                child: Center(
                  child: Icon(Icons.image_not_supported_rounded, size: 48),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Text(
                  product.nameProduct,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Text(product.description),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$ ${product.price.toStringAsFixed(2)}',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: theme.primaryColor,
                      ),
                    ),
                    ElevatedButton.icon(
                      label: Text('Comprar'),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Produc $product.nameProduct agregado al carrito',
                            ),
                          ),
                        );
                      },
                      icon: Icon(Icons.shopping_cart),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
