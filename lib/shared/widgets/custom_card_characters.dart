import 'package:flutter/material.dart';

class CustomCardCharacters extends StatelessWidget {
  final String imageUrl;
  final String name;
  final String description;

  const CustomCardCharacters({
    super.key,
    required this.imageUrl,
    required this.name,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    // var theme = Theme.of(context);
    return Card(
      elevation: 4.0,
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          Image.network(
            imageUrl,
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
                  name,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5.0),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
