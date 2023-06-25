import 'package:flutter/material.dart';
import 'package:shopp/data/dummy_data.dart';
import 'package:shopp/models/product.dart';

class ProductList with ChangeNotifier {
  List<Product> _items = dummyProducts;

  List<Product> get items => [..._items];

  void addProduct(Product product) {
    _items.add(product);
    notifyListeners();
  }
}
