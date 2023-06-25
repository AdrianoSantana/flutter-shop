import 'package:flutter/material.dart';
import 'package:shopp/data/dummy_data.dart';
import 'package:shopp/models/product.dart';
import 'package:shopp/utils/appbar_more_options_values.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;
  bool _showOnlyFavoriteProducts = false;

  List<Product> get items => [..._items];
  List<Product> get favoriteItems => _items.where((p) => p.isFavorite).toList();

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
