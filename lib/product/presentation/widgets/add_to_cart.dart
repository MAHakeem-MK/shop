import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:provider/provider.dart';
import 'package:shop/product/business_logic/products_logic.dart';
import 'package:shop/product/data/model/product.dart';

class AddToCartButton extends StatelessWidget {
  final Product product;
  const AddToCartButton({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconBadge(
      icon: Icon(Icons.add_shopping_cart),
      itemCount: product.stock,
      badgeColor: Colors.red,
      itemColor: Colors.white,
      onTap: () {
        context.read<ProductsLogic>().addToCart(product);
      },
    );
  }
}
