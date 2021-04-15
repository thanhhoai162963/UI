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
  var index = 0;

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
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IndexedStack(
                  index: index,
                  children: <Widget>[
                    Container(width: 100,height:100,color: Colors.blue),
                    Container(width: 200,height:100,color: Colors.red),
                    Container(width: 300,height:100,color: Colors.yellow),
                  ],
                ),
                FloatingActionButton(onPressed: (){
                  setState(() {
                    if(index < 2){
                      ++index;
                    }else {
                      index = 0;
                    }
                  });

                })
              ],
            ),
          )),
    );
  }
}

