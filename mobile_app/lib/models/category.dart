import 'product.dart';

class Category {
  String id;
  String title;
  List<Product> products;

  Category({
    required this.id,
    required this.title,
    this.products = const [],
  });

  // Add product to category
  void addProduct(Product product) {
    products.add(product);
  }

  // Remove product from category
  void removeProduct(Product product) {
    products.removeWhere((p) => p.id == product.id);
  }

  // Get products belonging to this category
  List<Product> getProducts() {
    return products;
  }
}