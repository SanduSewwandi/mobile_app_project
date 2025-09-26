class Product {
  String id;
  String name;
  String description;
  double price;
  int stock;
  String imageUrl;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.stock,
    required this.imageUrl,
  });

  // Get product details
  Map<String, dynamic> getDetails() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'stock': stock,
      'imageUrl': imageUrl,
    };
  }

  // Check if product is available (has stock)
  bool isAvailable() {
    return stock > 0;
  }


}