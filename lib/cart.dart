import 'package:flutter/material.dart';
import 'global_cart.dart';
class CartPage extends StatelessWidget {
  final List<Map<String, dynamic>> cart;
  const CartPage({super.key, required this.cart});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A2649),
      appBar: AppBar(
        title: const Text('Cart', style: TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFF1A2649),
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: GlobalCart.cart.length,
        itemBuilder: (context, index) {
          final item = GlobalCart.cart[index];
          return ListTile(
            leading: Image.asset(item['image'], width: 40, height: 40),
            title: Text(
              item['name'],
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              '${item['price']} x ${item['quantity']}',
              style: const TextStyle(color: Colors.white70),
            ),
          );
        },
      ),
    );
  }
}
