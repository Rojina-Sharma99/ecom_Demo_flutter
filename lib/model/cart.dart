import 'package:ecom_app/model/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Libron Witness VII",
        price: '236',
        description: 'The new edition shoes',
        imagePath: 'lib/assests/Libron_Witness_VII.png'),
    Shoe(
        name: "Air Jordan",
        price: '220',
        description: 'The forward thinking design of latest signature shoe',
        imagePath: 'lib/assests/Nike_Air_Jordan.png'),
    Shoe(
        name: "KD158",
        price: '236',
        description: 'Secure midfoot strap is suited for scoring binges.',
        imagePath: 'lib/assests/Nike_158.png'),
    Shoe(
        name: "Sneakers",
        price: '170',
        description:
            'Bouncy cushoning is paired with soft yet supportive foam.',
        imagePath: 'lib/assests/Nike_Sneakers.png'),
  ];

  //list of item in user cart
  List<Shoe> userCart = [];

  // get a list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
