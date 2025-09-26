import 'package:logger/logger.dart';
import 'cart_item.dart';
import 'user.dart';  

class Order {
  String id;
  User buyer;
  List<CartItem> items;
  double totalAmount;
  String status;
  DateTime orderDate;
  final Logger _logger = Logger(); // Add logger instance

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
    _logger.i('Order $id placed successfully'); // Changed print to logger
  }

  // Cancel order
  void cancel() {
    status = 'Cancelled';
    _logger.w('Order $id cancelled'); // Changed print to logger with warning level
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