import 'package:flutter/material.dart';
import 'package:icon_badge/icon_badge.dart';
import 'package:shop/product/business_logic/products_logic.dart';
import 'package:provider/provider.dart';

class CartNotification extends StatelessWidget {
  const CartNotification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<ProductsLogic>().cart;
    return IconBadge(
      icon: Icon(Icons.shopping_cart_outlined),
      itemCount: cart.length,
      badgeColor: Colors.red,
      itemColor: Colors.white,
      onTap: () {
        print('test');
      },
    );
  }
}
