class CartProducts {
  final int id;
  final String name, size, color;
  final String images;
  final double price;

  CartProducts({
    required this.id,
    required this.images,
    required this.name,
    required this.price,
    required this.size,
    required this.color,
  });
}

List<CartProducts> Products = [
  CartProducts(
    id: 1,
    images: "assets/images/shirt.png",
    name: "Butiqueta Custom T-shirt",
    price: 1250,
    size: "Medium",
    color: "Custom",
  ),
  CartProducts(
    id: 2,
    images: "assets/images/shoes.png",
    name: "Butiqueta Shoes",
    price: 250.00,
    size: "7.5",
    color: "Black with white base",
  ),
  CartProducts(
    id: 3,
    images: "assets/images/image_bag.png",
    name: "Butiqueta handbag",
    price: 1250.00,
    size: "No size",
    color: "Green",
  ),
];
