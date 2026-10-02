import 'package:flutter/material.dart';
import 'list_screen.dart';

class ProductDetailPage extends StatelessWidget {
  final Product product;

  const ProductDetailPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product.name),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            color: product.color,
            alignment: Alignment.center,
            child: Text(product.name.toLowerCase(), style: const TextStyle(color: Colors.white, fontSize: 48)),
          ),
          const SizedBox(height: 30),
          Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
          const SizedBox(height: 16),
          Text(product.description, style: const TextStyle(fontSize: 16)),
          const SizedBox(height: 16),
          Text('Price: ${product.price}', style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}