import 'package:flutter/material.dart';
import 'package:getx/components/my_button.dart';
import 'package:getx/model/shoe.dart';

class ProductTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? ontap;
  const ProductTile({super.key, required this.shoe,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Container(
        width: 240,
        height: 400,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //product image
              const SizedBox(height: 20),
              Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Image.asset(shoe.imagePath),
              ),

              //title
              const SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    shoe.productName,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ],
              ),

              //description
              const SizedBox(height: 10),
              Text(shoe.desc),

              //product price and add to cart
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //price
                  Text(
                    "\$${shoe.price}",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  //add button
                  MyButton(
                    icon: Icons.add,
                    ontap: ontap,
                  ),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
