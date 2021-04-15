import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui/product.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  get childrenDelegate => 123;

  @override
  Widget build(BuildContext context) {
    List<Product> listProduct = [
      Product("ca", 'assets/images/dongho_1.jpg', 700000),
      Product("ca", 'assets/images/dongho_2.jpg', 700000),
      Product("ca", 'assets/images/dongho_4.jpg', 700000),
      Product("ca", 'assets/images/dongho_5.jpg', 700000),
      Product("ca", 'assets/images/dongho_6.jpg', 700000),
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
              child: ListView(

                children: [],
              ))
          ),
    );
  }
}
