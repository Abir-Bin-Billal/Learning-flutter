import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  var _value = 1.0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("i wil inrease with the slider" , style: TextStyle(fontSize: _value),),
            SizedBox(height: 50,),
            Slider(min: 0, max: 36,value: _value , onChanged: (value){
              setState(() {
                _value=value;
              });
            }),
          ],
        )
      
    );
  }
}
