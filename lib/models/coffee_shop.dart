import 'package:flutter/material.dart';

import 'coffee.dart';

class CoffeeShop extends ChangeNotifier{
  final List<Coffee> _shop = [
    Coffee(
      name: 'Long Black',
      price: '4.10',
      imagePath: 'assets/images/1.jpeg',
    ),

    Coffee(name: 'Lattee', price: '4.20', imagePath: 'assets/images/2.jpeg'),
    Coffee(name: 'Espresso', price: '3.50', imagePath: 'assets/images/5.jpeg'),
    Coffee(
      name: 'Iced Coffee',
      price: '4.40',
      imagePath: 'assets/images/4.jpeg',
    ),
  ];
  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee){
    _userCart.add(coffee);
    notifyListeners();
  }
  void removeItemFromCart(Coffee coffee){
    _userCart.remove(coffee);
    notifyListeners();

  }
}
