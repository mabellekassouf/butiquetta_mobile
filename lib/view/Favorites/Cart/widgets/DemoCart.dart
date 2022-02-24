

import 'package:butiquetta_mobile/view/Favorites/Cart/widgets/CartProducts.dart';

class Cart{
  final CartProducts products;
  Cart({required this.products});
}
List<Cart> DemoCart = [
  Cart(products: Products[0]),
  Cart(products: Products[1]),
  Cart(products: Products[2]),
];
