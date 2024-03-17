import 'package:flutter/material.dart';
import 'package:my_calculator/page1.dart';
import 'package:my_calculator/page2.dart';
import 'package:my_calculator/page3.dart';
import 'package:my_calculator/page4.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Facebook"),
            backgroundColor: Colors.blue,
            bottom: TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Color.fromARGB(255, 221, 18, 18),
              tabs: [
              Tab(icon: Icon(Icons.home),text: "Home",),
              Tab(icon: Icon(Icons.people),text: "Home",),
              Tab(icon: Icon(Icons.video_call),text: "Home",),
              Tab(icon: Icon(Icons.more),text: "Home",)
            ]),
          ),
          body: TabBarView(children: [
            page1(),
            page2(),
            page3(),
            page4()
          ]),
          backgroundColor: Colors.black,
        ),
      )
    );
  }
}