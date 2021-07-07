import 'package:shop/product/data/model/product.dart';

class ProductsRepository {
  final _products = [Product(name: "milk", stock: 13),Product(name: "curd", stock: 4),Product(name: "ice-cream", stock: 15)];

  List<Product> fetchProducts() => _products;
}
