class Product {
  final int id;
  final String name,size,color;
  final List<String> images;
  final double price;

  Product({
    required this.id,
    required this.images,
    required this.name,
    required this.price,
    required this.size,
    required this.color,
  });
}

List<Product> Products = [
  Product(
    id: 1,
    images: [
      "assets/images/image_watch.png",
    ],
    name: "Butiqueta watch - Limited Edition SS22 COLLECTION",
    price: 1250.00,
    size: "ONE SIZE",
    color: "CUSTOM",
  ),
  Product(
    id: 2,
    images: [
      "assets/images/image-shirt.png",
    ],
    name: "Butiqueta Teal Embroidered Sweater",
    price: 250.00,
    size: "LARGE",
    color: "TEAL",
  ),
  Product(
    id: 3,
    images: [
      "assets/images/image_bag.png",
    ],
    name: "Butiqueta handbag SS22 COLLECTION",
    price: 1250.00,
    size: "NO SIZE",
    color: "FOREST GREEN",
  ),
  Product(
    id: 4,
    images: [
      "assets/images/image_coat.png",
    ],
    name: "Butiqueta Leather Jacket",
    price: 250.00,
    size: "MEDIUM",
    color: "TAN",
  ),

];


