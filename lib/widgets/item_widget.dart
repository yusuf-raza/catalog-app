import 'package:catalog_app/models/catalog_model.dart';
import 'package:flutter/material.dart';

class CatalogItemWidget extends StatelessWidget {
  const CatalogItemWidget({Key? key, required this.item}) : super(key: key);

  final CatalogItem item;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        onTap: () {},
        leading: Image.network(item.imageUrl),
        title: Text(item.product),
        subtitle: Text(item.description),
        trailing: Text(
          "\$${item.price}",
          style: const TextStyle(
            color: Colors.deepPurple,
          ),
        ),
      ),
    );
  }
}
