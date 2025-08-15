import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:getx/components/cart_tile.dart';
import 'package:getx/model/getx_service.dart';

class CartPage extends StatelessWidget {
  CartPage({super.key});
  //dependency inject
  final GetxService getx = Get.find<GetxService>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(title: Text('Cart ${getx.cart.length}')),
      body: Obx(
        () => ListView.builder(
          itemCount: getx.cart.length,
          itemBuilder: (context, index) {
            //individula  cart
            final shoe = getx.cart[index];
            return CartTile(
              shoe: shoe,
              onTap: () {
                //delet method
                getx.removeFromCart(shoe);
                Get.snackbar(shoe.productName, "Remove From Cart",snackPosition: SnackPosition.BOTTOM);
              },
            );
          },
        ),
      ),
    );
  }
}
