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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DropdownButton(
            value: selected,
            icon: Icon(Icons.arrow_drop_down),
              
              onChanged: ( String? value){
                setState(() {
                  selected = value!;
                });
              },
             items: list.map<DropdownMenuItem<String>>((String value){
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
             }).toList(),
              )
        ],
      ),
    ));
  }
}
