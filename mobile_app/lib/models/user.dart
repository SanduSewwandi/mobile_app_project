class User {
  String id;
  String name;
  String email;
  String password; 
  String phone;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
  });

  // Login method
  bool login(String email, String password) {
    return this.email == email && this.password == password;
  }

  // Logout method
  void logout() {
    print('User $name logged out');
  }

  // Register method
  static User register(Map<String, dynamic> userData) {
    return User(
      id: userData['id'] ?? DateTime.now().millisecondsSinceEpoch.toString(),
      name: userData['name'],
      email: userData['email'],
      password: userData['password'],
      phone: userData['phone'],
    );
  }

  // View order history
  void viewOrderHistory() {
    print('Viewing order history for user: $name');
  }

  // Reset password
  void resetPassword(String newPassword) {
    password = newPassword;
    print('Password reset successfully for $email');
  }
}