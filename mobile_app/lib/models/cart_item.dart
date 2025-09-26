import 'product.dart';

class CartItem {
  Product product;
  int quantity;

  CartItem({
    required this.product,
    required this.quantity,
  });

  // Calculate subtotal for this cart item
  double getSubtotal() {
    return product.price * quantity;
  }
}