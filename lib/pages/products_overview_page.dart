import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp/models/product_list.dart';
import 'package:shopp/utils/appbar_more_options_values.dart';

import '../components/product_grid.dart';

class ProductsOverviewPage extends StatefulWidget {
  @override
  State<ProductsOverviewPage> createState() => _ProductsOverviewPageState();
}

class _ProductsOverviewPageState extends State<ProductsOverviewPage> {
  bool _showFavoriteOnly = false;

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProductList>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha loja'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
            itemBuilder: (_) => const [
              PopupMenuItem(
                value: MoreOptionsValue.onlyFavoritesProducts,
                child: Text('Somente favoritos'),
              ),
              PopupMenuItem(
                value: MoreOptionsValue.allProducts,
                child: Text('Todos'),
              ),
            ],
            onSelected: (value) {
              setState(() {
                _showFavoriteOnly =
                    value == MoreOptionsValue.onlyFavoritesProducts
                        ? true
                        : false;

                print(_showFavoriteOnly);
              });
            },
          )
        ],
      ),
      body: ProductGrid(showFavoriteOnly: _showFavoriteOnly),
    );
  }
}
