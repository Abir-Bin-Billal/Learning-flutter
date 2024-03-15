import 'package:flutter/material.dart';
import 'package:my_calculator/page1.dart';
import 'package:my_calculator/page2.dart';
import 'package:my_calculator/page3.dart';
import 'package:my_calculator/page4.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
var _currentindex = 0;
final pages = [
page1(),
page2(),
page3(),
page4(),
];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar:BottomNavigationBar(
          
          currentIndex: _currentindex,
          items: [
        
          BottomNavigationBarItem( backgroundColor: Colors.black,  icon: Icon(Icons.home),label: "Home" ),
           BottomNavigationBarItem(backgroundColor: Colors.black,  icon: Icon(Icons.message),label: "message"),
            BottomNavigationBarItem(backgroundColor: Colors.black, icon: Icon(Icons.call),label: "Call"),
             BottomNavigationBarItem(backgroundColor: Colors.black,icon: Icon(Icons.contact_emergency),label: "Contact"),

        ],
        onTap: (index){
          setState(() {
            _currentindex=index;
          });
        },
        ),
        body: pages[_currentindex],
      ),
    );
  }
}