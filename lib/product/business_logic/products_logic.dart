import 'package:flutter/material.dart';
import 'package:shop/product/data/model/product.dart';
import 'package:shop/product/data/repository/products_repository.dart';

class ProductsLogic extends ChangeNotifier {
  final ProductsRepository repository;
  List<Product> products = [];
  Set<Product> cart = Set.from([]);
  ProductsLogic(this.repository);

  getProducts() {
    products = repository.fetchProducts();
    notifyListeners();
  }

  addToCart(Product product) {
    products.where((element) => element.name == product.name).first.stock -= 1;
    cart.add(product);
    notifyListeners();
  }
}
