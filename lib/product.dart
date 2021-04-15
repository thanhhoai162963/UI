import 'package:flutter/cupertino.dart';

class Product {
  String name,image;
  double price;

  Product(@required this.name,@required this.image,@required this.price);
  @override
  String toString() {
    // TODO: implement toString
    return  '$name \n $image \n $price';
  }
}