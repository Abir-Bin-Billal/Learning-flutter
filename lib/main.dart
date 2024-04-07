import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:my_calculator/page_one.dart';
import 'package:my_calculator/page_two.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pages = [
    one(),
    two()
  ];
  var _index = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Scaffold(
      appBar: AppBar(title: Text("App Bar")),
      backgroundColor: Colors.black,
      body: Row(
        children: [
          NavigationRail(
            labelType: NavigationRailLabelType.all,
            onDestinationSelected: (int val){
              setState(() {
                val = _index;
              });
            },
        backgroundColor: Colors.black,
        destinations: [
        NavigationRailDestination(icon: Icon(Icons.wifi), label: Text("Wifi" , style: TextStyle(color: Colors.white),)),
        NavigationRailDestination(icon: Icon(Icons.home), label: Text("Home")),
        
     
      ], selectedIndex: _index),
      
     Expanded(child: Container(
        child: pages[_index],
      ))
        ],
      )
    ));
  }
}
