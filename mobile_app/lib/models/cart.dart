import 'cart_item.dart';
import 'user.dart';
import 'product.dart';

class Cart {
  String id;
  User owner;
  List<CartItem> items;

  Cart({required this.id, required this.owner, this.items = const []});

  // Add item to cart
  void addItem(Product product, int quantity) {
    final existingItemIndex = items.indexWhere(
      (item) => item.product.id == product.id,
    );

    if (existingItemIndex != -1) {
      // Update quantity if product already exists
      items[existingItemIndex].quantity += quantity;
    } else {
      // Add new item
      items.add(CartItem(product: product, quantity: quantity));
    }
  }

  // Remove item from cart
  void removeItem(Product product) {
    items.removeWhere((item) => item.product.id == product.id);
  }

  // Update item quantity
  void updateQuantity(Product product, int newQuantity) {
    final itemIndex = items.indexWhere((item) => item.product.id == product.id);
    if (itemIndex != -1) {
      if (newQuantity <= 0) {
        removeItem(product);
      } else {
        items[itemIndex].quantity = newQuantity;
      }
    }
  }

  // Calculate total amount
  double getTotal() {
    return items.fold(0.0, (sum, item) => sum + item.getSubtotal());
  }

  // Clear cart
  void clear() {
    items.clear();
  }
}
