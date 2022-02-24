import 'Product.dart';

class Cart {
  final Product product;

  Cart({required this.product});
}

List<Cart> DemoCart = [
  Cart(product: Products[0]),
  Cart(product: Products[1]),
  Cart(product: Products[2]),
  Cart(product: Products[3]),
];
