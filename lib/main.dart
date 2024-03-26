import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

final list = [
  "one",
  "Two",
  "Three",
  "Four",
];

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
  var selected = list.first;
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Dismissible(key: ValueKey("123"), 
          child: ListTile(
            title: Text("Left or right to remove"),
            subtitle: Text("NOthing"),
            
          ),
          background: Container(
            color: Colors.green,
            child: Icon(Icons.delete),
          ))
        ),
        
        );
  }
}
