import 'package:flutter/material.dart';
import 'package:my_calculator/HomeApp.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeApp(),
    );
  }
}

