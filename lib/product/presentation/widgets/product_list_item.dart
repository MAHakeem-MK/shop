import 'package:flutter/material.dart';
import 'package:shop/product/data/model/product.dart';
import 'package:shop/product/presentation/widgets/add_to_cart.dart';

class ProductListItem extends StatelessWidget {
  final Product product;
  const ProductListItem({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(product.name),
        trailing: AddToCartButton(product: product),
      ),
    );
  }
}
