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
    List<Product> list = [
      Product("ca", "123", 700000),
      Product("ca", "1234", 700000),
      Product("ca", "1235", 700000),
      Product("ca", "1236", 700000),
      Product("ca", "1232", 700000),
      Product("ca", "1234", 700000),
      Product("ca", "123", 700000),
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Container(
              child: GridView.builder(
                itemCount: list.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                    crossAxisCount: 5,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      color: Colors.blue,
                      child: Container(
                        color: Colors.blue,
                        child: Column(
                          children: [
                            Text(list[index].name),
                            Text(list[index].image),
                            Text('${list[index].price}'),
                          ],
                        ),
                      )
                    );
                  }))),
    );
  }
}

