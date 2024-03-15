import 'package:flutter/material.dart';
import 'package:my_calculator/page1.dart';
import 'package:my_calculator/page2.dart';
import 'package:my_calculator/page3.dart';
import 'package:my_calculator/page4.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
   MyApp({super.key});
 
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
   final PageController _controller = PageController(
    initialPage: 0,
    
  );

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: PageView(
          controller: _controller,
          scrollDirection: Axis.vertical,
          children: const [
            page1(),
            page2(),
            page3(),
            page4(),
          ],
        ),
      ),
    );
  }
}

