import 'package:flutter/material.dart';
import 'package:getx/components/my_drawer.dart';
import 'package:getx/components/product_tile.dart';

class HomePages extends StatelessWidget {
  const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      //drawer call
      drawer: MyDrawer(),
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      body: Column(
        children: [
          //Search Product
           const SizedBox(height: 10,),
          Container(
            decoration: BoxDecoration(color: Colors.white,),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //search text
                Text('Search'),

                //serach icon
                Icon(Icons.search)
              ],
            ),
          ),

          //Tagline
           const SizedBox(height: 20,),
          Text('Pick From a Selected list of Premium  Produtcts'),
          
          //product tile
          const  SizedBox(height: 20,),
          SizedBox(
            height: 500,
            child: ListView.builder(
            itemCount: 4,
            scrollDirection:Axis.horizontal,
            itemBuilder:(context, index) {
            return ProductTile();
          },),
          )

        ],
      ),
    );
  }
}
