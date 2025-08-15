import 'package:get/get.dart';
import 'package:getx/model/shoe.dart';

class GetxService extends GetxController {
  //all Shoes here
  List<Shoe> allProduct = [
    Shoe(
      productName: "Air Jordan  103",
      desc: "BUBBLE GUMMERS DEEP Lace-Up Sneakers for Children",
      price: "99.99",
      imagePath: "lib/images/shoe4.jpg",
    ),
    Shoe(
      productName: "Air Jordan 203",
      desc: "BUBBLE GUMMERS ARCHIV Lace-Up Sneakers for Children",
      price: "99.99",
      imagePath: "lib/images/shoe3.jpg",
    ),
    Shoe(
      productName: "Air Jordan 403",
      desc: "BUBBLE GUMMERS DEEP Lace-Up Sneakers for Children",
      price: "99.99",
      imagePath: "lib/images/shoe2.jpg",
    ),
    Shoe(
      productName: "Air Jordan 502",
      desc: "BUBBLE GUMMERS DEEP Lace-Up Sneakers for Children",
      price: "99.99",
      imagePath: "lib/images/shoe1.jpg",
    ),
  ];

  //cart item list

  var cart = <Shoe>[].obs;

  //add to cart
  void addtoCart(Shoe shoe) {
    cart.add(shoe);
  }

  //remove item form cart
  void removeFromCart(Shoe shoe) {
    cart.remove(shoe);
  }
}
