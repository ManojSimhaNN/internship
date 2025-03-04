import 'package:flutter/material.dart';
import 'package:basic_app/models/coffee.dart';

class CoffeeShop extends ChangeNotifier {
  //coffee for sale list
  final List<Coffee> _shop = [
    //black coffee
    Coffee(
      name: 'Long Black',
      price: "4.10",
      imagePath: "lib/images/hot-coffee.png",
    ),

    //latte
    Coffee(
      name: 'Latte',
      price: "4.20",
      imagePath: "lib/images/latte-art.png",
    ),
    //espresso
    Coffee(
      name: 'Espresso',
      price: "4.10",
      imagePath: "lib/images/expresso.png",
    ),
    //iced coffee
    Coffee(
      name: 'Iced Coffee',
      price: "4.10",
      imagePath: "lib/images/iced-coffee.png",
    ),
  ];

  //user cart
  final List<Coffee> _userCart = [];

  //get coffee list
  List<Coffee> get shop => _shop;

  //get user cart
  List<Coffee> get cart => _userCart;

  //add item to cart
  void addToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  //remove item from cart
  void removeFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
