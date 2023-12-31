import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopp/models/product_list.dart';
import 'package:shopp/pages/product_detail_page.dart';
import 'package:shopp/pages/products_overview_page.dart';
import 'package:shopp/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductList(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          highlightColor: Colors.deepOrange,
          fontFamily: 'Lato',
        ),
        home: ProductsOverviewPage(),
        debugShowCheckedModeBanner: false,
        routes: {
          AppRoutes.productDetail: (context) => ProductDetailPage(),
        },
      ),
    );
  }
}
