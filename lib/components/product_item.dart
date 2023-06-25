import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp/utils/app_routes.dart';

import '../models/product.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<Product>(context);
    final product = provider;
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: GridTile(
        footer: GridTileBar(
          title: Text(
            product.title,
            textAlign: TextAlign.center,
          ),
          backgroundColor: Colors.black54,
          leading: IconButton(
            color: Theme.of(context).highlightColor,
            onPressed: () {
              product.toggleFavorite();
            },
            icon: Icon(
              product.isFavorite ? Icons.favorite : Icons.favorite_border,
            ),
          ),
          trailing: IconButton(
            color: Theme.of(context).highlightColor,
            onPressed: () {},
            icon: const Icon(Icons.shopping_cart),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushNamed(
              AppRoutes.productDetail,
              arguments: product,
            );
          },
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
