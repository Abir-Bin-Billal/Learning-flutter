import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

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
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("JSON Data Fetching"),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          _value=!_value;
        });
      }),
      body: Center(
        child : AnimatedContainer( duration: Duration(seconds: 4), 
        child: Container(
          height: _value==false? 150:350,
          width: _value==false? 150:350,
          color: Colors.blue,
        ),
        )
      ),
      
    );
  }
}
