import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop/product/business_logic/products_logic.dart';
import 'package:shop/product/data/repository/products_repository.dart';
import 'package:shop/product/presentation/widgets/products_widgets.dart';

class ProductsPage extends StatefulWidget {
  ProductsPage({Key? key}) : super(key: key);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  final repository = ProductsRepository();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ProductsLogic(repository),
      child: Scaffold(
        appBar: AppBar(
          actions: [CartNotification()],
        ),
        body: ProductsList(),
      ),
    );
  }
}
