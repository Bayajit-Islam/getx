import 'package:flutter/material.dart';
import 'package:getx/components/my_button.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: 240,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //product image
              const SizedBox(height: 20,),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Icon(Icons.low_priority),
              ),
                
              //title
              const SizedBox(height: 30,),
              Row(
                children: [
                  Text('AiR Jordan 301', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                ],
              ),
                
              //description
              const SizedBox(height: 10,),
              Text('A versatile running shoe with responsive Zoom Air cushioning and a breathable mesh upper, designed for everyday training and long-distance comfort.'),
                
              //product price and add to cart
              const  SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //price
                  Text('\$99.99',style: TextStyle(fontWeight: FontWeight.bold),),
                  //add button
                  MyButton(
                    icon: Icons.add,
                    ontap: () {
                      //add to cart method here
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
