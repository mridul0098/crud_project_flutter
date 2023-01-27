import 'package:crud/Screen/ProductGridViewScren.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Screen/ProductCreateScreen.dart';

void main(){
  runApp(myapp());
}
class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter crud app",
      home: ProductGridViewScren(),
    );
  }
}
