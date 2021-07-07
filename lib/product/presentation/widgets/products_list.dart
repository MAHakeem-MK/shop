import 'package:flutter/material.dart';
import 'package:shop/product/business_logic/products_logic.dart';
import 'package:shop/product/data/model/product.dart';
import 'package:shop/product/presentation/widgets/product_list_item.dart';
import 'package:provider/provider.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({
    Key? key,
  }) : super(key: key);

  @override
  _ProductsListState createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  void initState() {
    super.initState();
    context.read<ProductsLogic>().getProducts();
  }

  @override
  Widget build(BuildContext context) {
    final List<Product> products = context.watch<ProductsLogic>().products;
    return ListView.builder(
      itemCount: products.length,
      itemBuilder: (context, position) {
        return ProductListItem(product: products[position]);
      },
    );
  }
}
