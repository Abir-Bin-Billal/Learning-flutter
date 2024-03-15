import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class HomeApp extends StatelessWidget{




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: 
          Container(color: Colors.green,)          
          ),
          Expanded(
             flex: 2,
             child: Container(color: Colors.blue
          ,
          )),
          Expanded( 
            flex: 1,
          child: Container(color: Colors.red
          ,
          )),
          Expanded(
            flex: 5,
            child: Container(color: Colors.yellow
          ,
          )),

        ],
        )
    );
  }
}