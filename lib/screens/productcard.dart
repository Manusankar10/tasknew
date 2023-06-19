import 'package:flutter/material.dart';
class ProductCard extends StatelessWidget {
  final String imagePath;
  final String name;
  final double price;

  const ProductCard({
    required this.imagePath,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          Expanded(
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                Image.asset(
                  imagePath,
                  fit: BoxFit.cover,
                ),
                IconButton(
                  onPressed: () {
                    // Handle favorite icon tap
                  },
                  icon: const Icon(Icons.favorite),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text(name),
            subtitle: Text('\$${price.toStringAsFixed(2)}'),
          ),
        ],
      ),
    );
  }
}

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      padding: const EdgeInsets.all(8),
      children: [
        ProductCard(
          imagePath: 'assets/images/kidimg1.jpg',
          name: 'Product 1',
          price: 9.99,
        ),
        ProductCard(
          imagePath: 'assets/images/kidimg1.jpg',
          name: 'Product 2',
          price: 19.99,
        ),
        ProductCard(
          imagePath: 'assets/images/kidimg1.jpg',
          name: 'Product 3',
          price: 9.99,
        ),
        ProductCard(
          imagePath: 'assets/images/kidimg1.jpg',
          name: 'Product 4',
          price: 19.99,
        ),
        ProductCard(
          imagePath: 'assets/images/kidimg1.jpg',
          name: 'Product 5',
          price: 9.99,
        ),
        ProductCard(
          imagePath: 'assets/images/kidimg1.jpg',
          name: 'Product 6',
          price: 19.99,
        ),
        
      ],
    );
  }
}

