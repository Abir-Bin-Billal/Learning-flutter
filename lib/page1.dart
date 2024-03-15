import 'package:flutter/material.dart';

class page1 extends StatelessWidget {
  const page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: Hero(tag: "add"
        
        ,
         child: Icon(Icons.message , size: 250 , color: Colors.green,)),
      ),
    );
  }
}