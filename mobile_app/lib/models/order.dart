import 'cart_item.dart';
import 'user.dart';  

class Order {
  String id;
  User buyer;
  List<CartItem> items;
  double totalAmount;
  String status;
  DateTime orderDate;

  Order({
    required this.id,
    required this.buyer,
    required this.items,
    required this.totalAmount,
    required this.status,
    required this.orderDate,
  });

  // Place order
  void place() {
    status = 'Placed';
    print('Order $id placed successfully');
  }

  // Cancel order
  void cancel() {
    status = 'Cancelled';
    print('Order $id cancelled');
  }

  // Get order details
  Map<String, dynamic> getDetails() {
    return {
      'id': id,
      'buyer': buyer.name,
      'items': items.map((item) => {
        'product': item.product.name,
        'quantity': item.quantity,
        'subtotal': item.getSubtotal(),
      }).toList(),
      'totalAmount': totalAmount,
      'status': status,
      'orderDate': orderDate.toString(),
    };
  }
}