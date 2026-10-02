import 'package:flutter/material.dart';
import 'detail_screen.dart';

class Product {
  final String name;
  final String description;
  final int price;
  final Color color;

  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.color,
  });
}

final List<Product> products = [
  Product(name: 'Pixel', description: 'Pixel is the best phone ever', price: 800, color: Colors.blue),
  Product(name: 'Laptop', description: 'Laptop is a computer', price: 2000, color: Colors.green),
  Product(name: 'Tablet', description: 'Tablet is the most useful device in a meeting', price: 1500, color: Colors.amber),
  Product(name: 'Pendrive', description: 'Pendrive is the best way to carry your files', price: 100, color: Colors.deepOrange),
  Product(name: 'Floppy Drive', description: 'Floppy drive is too old', price: 20, color: Colors.cyan),
];

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Navigation'),
        backgroundColor: Colors.purple,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProductDetailPage(product: product)),
              );
            },
            child: ProductItem(product: product),
          );
        },
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final Product product;

  const ProductItem({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(6),
      child: SizedBox(
        height: 120,
        child: Row(
          children: [
            Container(
              width: 130,
              color: product.color,
              alignment: Alignment.center,
              child: Text(
                product.name.toLowerCase(),
                style: const TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(product.name, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                    const SizedBox(height: 4),
                    Text(product.description, textAlign: TextAlign.center),
                    const SizedBox(height: 4),
                    Text('Price: ${product.price}'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}