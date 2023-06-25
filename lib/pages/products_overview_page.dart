import 'package:flutter/material.dart';

import '../components/product_grid.dart';

class ProductsOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha loja'),
        centerTitle: true,
      ),
      body: const ProductGrid(),
    );
  }
}
