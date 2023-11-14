import 'package:flutter/material.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gift Categories', style: TextStyle(color: Colors.black),),
        backgroundColor: Color.fromARGB(255, 255, 135, 7),
      ),
      backgroundColor: Color.fromARGB(255, 250, 214, 175),
      body: Column(
        children: <Widget>[
          // Categories Row
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CategoryTile(category: 'Birthday Gifts', icon: Icons.cake),
              CategoryTile(category: 'Valentine Gifts', icon: Icons.favorite),
              CategoryTile(category: 'Wedding Gifts', icon: Icons.event),
            ],
          ),
          // Images with Prices and Add to Cart
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemCount: 6, // Replace with the actual number of items
              itemBuilder: (context, index) {
                // Replace with the actual image paths
                String imagePath = 'assets/item_$index.jpg';
                String price = '\$${(index + 1) * 10.0}';

                return ItemCard(
                  imagePath: imagePath,
                  price: price,
                  onAddToCart: () {
                    // Navigate to the cart page
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CartPage()),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final String category;
  final IconData icon;

  const CategoryTile({
    required this.category,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Handle category selection if needed
      },
      child: Column(
        children: <Widget>[
          Icon(icon, size: 40.0),
          SizedBox(height: 8.0),
          Text(category, style: TextStyle(fontSize: 16.0)),
        ],
      ),
    );
  }
}

class ItemCard extends StatelessWidget {
  final String imagePath;
  final String price;
  final VoidCallback onAddToCart;

  const ItemCard({
    required this.imagePath,
    required this.price,
    required this.onAddToCart,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0,
      child: Column(
        children: <Widget>[
          Image.asset(
           "assets/images/ha.png",
            fit: BoxFit.cover,
            height: 450.0,
            
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                Text(
                  'Price: $price',
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: onAddToCart,
                  child: Text('Add to Cart', style: TextStyle(color: Colors.black),),
                  style:ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(Color.fromARGB(255, 255, 135, 7)),        ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Cart'),
        backgroundColor: Color.fromARGB(255, 255, 135, 7),
      ),
      body: Center(
        child: Text('Currently empty'),
      ),
    );
  }
}
