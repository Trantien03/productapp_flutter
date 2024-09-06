class Product {
  final int id;
  final String name;
  final double price;
  final String imageUrl;
  final String saleDate;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
    required this.saleDate,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      saleDate: json['saleDate'],
      description: json['description'],
    );
  }
}
