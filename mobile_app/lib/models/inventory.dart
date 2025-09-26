class Inventory {
  final Map<String, int> _stock = {}; // Added 'final' keyword

  // Update stock for a product
  void updateStock(String productId, int delta) {
    _stock[productId] = (_stock[productId] ?? 0) + delta;
    if (_stock[productId]! < 0) {
      _stock[productId] = 0;
    }
  }

  // Check availability of a product
  bool checkAvailability(String productId) {
    return (_stock[productId] ?? 0) > 0;
  }

  // Get current stock for a product
  int getStock(String productId) {
    return _stock[productId] ?? 0;
  }
}