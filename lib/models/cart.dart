import 'package:ecomm/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  // List of shoes for sale.
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jordan Mid SE 1",
      price: "15999",
      imagePath: "lib/images/airjordanmidse1.png",
      description: "The forward thinking design of the latest signature shoes",
    ),
    Shoe(
      name: "Air Jordan Mid SE",
      price: "14999",
      imagePath: "lib/images/airjordanmidse.png",
      description: "The original design of the latest signature shoes",
    ),
    Shoe(
      name: "Jumpan MVP",
      price: "16250",
      imagePath: "lib/images/jumpmanmvp.png",
      description: "The original design of the Jumpman mvp signature shoes",
    ),
    Shoe(
      name: "Jumpan MVP White",
      price: "16750",
      imagePath: "lib/images/jumpmanmvpwhite.png",
      description: "The white design of the Jumpman mvp signature shoes",
    ),
  ];

  // list of items in the cart.
  List<Shoe> userCart = [];

  // get list of shoes for sale.
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart.
  List<Shoe> getCart() {
    return userCart;
  }

  // add items to cart.
  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove items from cart.
  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
