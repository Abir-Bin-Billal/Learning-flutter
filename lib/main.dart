import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

void main(){
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override


File? _image;
Future getImage() async{
  final image = await ImagePicker().pickImage(source: ImageSource.gallery);
  if (image == null) {
    return;
  }
  final ImageTemporary = File(image.path);
  setState(() {
    this._image = ImageTemporary;
  });
}
Future getCamera() async{
  final image = await ImagePicker().pickImage(source: ImageSource.camera);
  if (image == null) {
    return;
  }
  final ImageTemporary = File(image.path);
  setState(() {
    this._image = ImageTemporary;
  });
}




  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.blue,
              child: _image==null?Text("no imaees"):Image.network(_image!.path , fit: BoxFit.cover,)
            
              
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                FloatingActionButton(onPressed: (){getCamera();}, child: Icon(Icons.camera),),
                FloatingActionButton(onPressed: (){getImage();} , child: Icon(Icons.browse_gallery),)
              ],
            )
          ],
        ),
    
      ),
    );
    
  }

}