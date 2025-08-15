import 'package:flutter/material.dart';
import 'package:getx/screen/shop_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //shop logo
            Icon(Icons.shopify, size: 110),

            //Shop Name
            const SizedBox(height: 20),
            Text(
              'Shopify Store',
              style: TextStyle(fontSize: 33, fontWeight: FontWeight.bold),
            ),

            //Tag line
            Text('Premium Quality Products'),

            //route Button to Home Pages
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ShopPage()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(4),
                ),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                margin: EdgeInsets.symmetric(vertical: 20),
                child: Icon(Icons.arrow_right_alt),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
