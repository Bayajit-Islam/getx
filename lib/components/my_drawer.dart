import 'package:flutter/material.dart';
import 'package:getx/screen/cart_page.dart';
import 'package:getx/screen/shop_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(child: Icon(Icons.shopify, size: 173)),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('H O M E'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopPage()),
              );
            },
          ),

           ListTile(
            leading: Icon(Icons.shopify),
            title: Text('S H O P'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ShopPage()),
              );
            },
          ),

           ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('C A R T'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
