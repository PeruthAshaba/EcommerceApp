import 'package:flutter/material.dart';
import 'ShopPage.dart';
class ProductsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Navigate to the cart page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopPage()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ProductItem(name: 'Product 1', price: '100'),
          ProductItem(name: 'Product 2', price: '150'),
          ProductItem(name: 'Product 3', price: '80'),
          // Add more product items as needed
        ],
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  final String name;
  final String price;

  ProductItem({required this.name, required this.price});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        title: Text(name),
        subtitle: Text('\$$price'),
        trailing: IconButton(
          icon: Icon(Icons.add_shopping_cart),
          onPressed: () {
            // Add product to cart (implement your cart logic here)
          },
        ),
      ),
    );
  }
}
