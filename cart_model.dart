import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier {
  // list of items on sale
  final List _shopItems = const [
    // [ itemName, itemPrice, imagePath, color ]
    ["Kitkat", "240.00", "lib/images/kit.png", Colors.blueGrey],
    ["Chicken", "149.99", "lib/images/chicken.png", Colors.red],
    ["Biscuit", "85.00", "lib/images/bis.png", Colors.brown],
    ["Water", "20.00", "lib/images/water.png", Colors.blue],
    ["Biscuit", "85.00", "lib/images/bis.png", Colors.brown],
    ["Banana", "7.45", "lib/images/banana.png", Colors.yellow],
    ["Avacado", "85.00", "lib/images/avocado.png", Colors.brown],
  ];

  // list of cart items
  List _cartItems = [];

  get cartItems => _cartItems;

  get shopItems => _shopItems;

  // add item to cart
  void addItemToCart(int index) {
    _cartItems.add(_shopItems[index]);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(int index) {
    _cartItems.removeAt(index);
    notifyListeners();
  }

  // calculate total price
  String calculateTotal() {
    double totalPrice = 0;
    for (int i = 0; i < cartItems.length; i++) {
      totalPrice += double.parse(cartItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }
}// TODO Implement this library.