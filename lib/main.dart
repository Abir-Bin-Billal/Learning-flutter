import 'package:flutter/material.dart';
import 'package:my_calculator/page1.dart';

void main(){
  runApp(MaterialApp(home: Myapp(),));
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: CircleAvatar(
            radius: 50,
            child: GestureDetector(
              child: Hero(tag: "add",
               child: Icon(Icons.camera,size: 50,color: Colors.red,),
               
               ),
               onTap:   (){Navigator.push(context, MaterialPageRoute(builder: (context)=> page1()));},
            )
          ),
        ),
    );
  }
}