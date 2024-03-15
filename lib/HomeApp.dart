import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomeApp extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: GridView.count(
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
            crossAxisCount: 2,
            children: [
              Container(
                height: 200,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.blue,
              ),
              Container(
                height: 200,
                width: 150,
                color: Colors.blue,
              ),
          
            ],
            ),
        ),
      ) ,
    );
  }
}