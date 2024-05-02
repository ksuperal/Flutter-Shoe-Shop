import 'package:flutter_application_1/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier{
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan',
      price: '200',
      description:
          'The Air Jordan 1 Retro High OG "Shadow 2.0" is a Spring 2021 release' ,
      imagePath: 'lib/asset/1.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '240',
      description:
          'The Air Jordan 1 Retro High OG "Shadow 2.0" is a Spring 2021 release',
      imagePath: 'lib/asset/2.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '200',
      description:
          'The Air Jordan 1 Retro High OG "Shadow 2.0" is a Spring 2021 release' ,
      imagePath: 'lib/asset/3.png',
    ),
    Shoe(
      name: 'Air Jordan',
      price: '240',
      description:
          'The Air Jordan 1 Retro High OG "Shadow 2.0" is a Spring 2021 release' ,
      imagePath: 'lib/asset/4.png',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
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

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}