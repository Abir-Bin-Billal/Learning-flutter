import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
     return MaterialApp(debugShowCheckedModeBanner: false,
     home:  home());
     
  }
}

class home extends StatelessWidget {
  home({super.key});

ButtonStyle _buttonStyle = ElevatedButton.styleFrom(backgroundColor: Colors.blue);

MyDialouge(context){
  return showDialog(
context: context,
builder: (BuildContext context) {
  return Expanded(child: AlertDialog(
      title: Text('Alert!'),
      content: Text("Do you want to delete?"),
      actions: [
        ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("No") , style: _buttonStyle,),
        ElevatedButton(onPressed: (){Navigator.of(context).pop();}, child: Text("Yes") , style: ElevatedButton.styleFrom(backgroundColor: Colors.red),),
      ],

  ));
} );
 
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: ElevatedButton(onPressed: (){MyDialouge(context);}, child: Text("Submit") ,),
      ),
    );
  }
}