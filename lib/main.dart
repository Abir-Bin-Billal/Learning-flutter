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
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: ElevatedButton(onPressed: (){showModalBottomSheet<void>(context: context, builder: (BuildContext context){
            return Container(
              height: 250,
              
              child: Column(
                children: [
                  ListTile(
                    title: Text("Abir"),
                    subtitle: Text("The litti-boy"),
                    leading: Icon(Icons.home),
                  ),ListTile(
                    title: Text("Jarif"),
                    subtitle: Text("The starboy"),
                    leading: Icon(Icons.home),
                  ),ListTile(
                    title: Text("aadeeb"),
                    subtitle: Text("The bundasting"),
                    leading: Icon(Icons.home),
                  ),
                  ElevatedButton(onPressed: (){Navigator.pop(context);}, child: Text("Back"))
                ],
              ),
            );


          });} , child: Text("Click me!"),),
      ),
    );
  }
}