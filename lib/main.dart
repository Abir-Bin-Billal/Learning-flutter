import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
          color: Colors.black,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10 , vertical: 10),
            child: GNav(
              gap: 10,
              padding: EdgeInsets.all(15.0),
              backgroundColor: Colors.black,
              color: Colors.white,
              tabBackgroundColor: Colors.white,
              tabs: [
              GButton(icon: Icons.home , text: "Home",),
              GButton(icon: Icons.favorite , text: "Favourite",),
              GButton(icon: Icons.message,text: "Message",),
              GButton(icon: Icons.contact_mail, text: "Contact",)
            ]),
          ),
        ),
        
        );
  }
}
