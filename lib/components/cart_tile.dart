import 'package:flutter/material.dart';
import 'package:getx/model/shoe.dart';

class CartTile extends StatelessWidget {
  final Shoe shoe;
  final void Function()? onTap;
  const CartTile({super.key, required this.shoe,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white,
      borderRadius: BorderRadius.circular(4)),
      margin: EdgeInsets.only(left: 15,right: 15,top: 10),
      child: ListTile(
        leading: Image.asset(shoe.imagePath),
        title: Text(shoe.productName),
        subtitle: Text(shoe.desc),
        trailing: IconButton(onPressed: onTap, icon: Icon(Icons.delete)),
      ),
    );
  }
}
