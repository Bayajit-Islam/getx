import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/components/my_drawer.dart';
import 'package:getx/components/product_tile.dart';
import 'package:getx/model/getx_service.dart';
import 'package:getx/screen/cart_page.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  //Dependency Injection
  final GetxService getx = Get.find<GetxService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      //drawer call
      drawer: MyDrawer(),
      appBar: AppBar(
        actions: [
          //route to cart page
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage()),
              );
            },
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: Column(
        children: [
          //Search Product
          const SizedBox(height: 10),
          Container(
            decoration: BoxDecoration(color: Colors.white),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //search text
                Text('Search'),

                //serach icon
                Icon(Icons.search),
              ],
            ),
          ),

          //Tagline
          const SizedBox(height: 20),
          Text('Pick From a Selected list of Premium  Produtcts'),

          //product tile
          const SizedBox(height: 20),
          SizedBox(
            height: 500,
            child: ListView.builder(
              itemCount: getx.allProduct.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                //get inidividual product
                final shoe = getx.allProduct[index];

                return ProductTile(
                  shoe: shoe,
                  ontap: () {
                    getx.addtoCart(shoe);
                    Get.snackbar(
                      shoe.productName,
                      "Add Succesfull",
                      snackPosition: SnackPosition.BOTTOM,
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
