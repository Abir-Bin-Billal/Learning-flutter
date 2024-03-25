import 'package:flutter/material.dart';

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
  MySnackbar(String message ,BuildContext context){
  return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(message) , 
    duration: Duration(seconds: 5),
    action: SnackBarAction(label: "Ok", onPressed: (){}),
    
    ));
}
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){MySnackbar("Are you sure?", context);}, child: Text('Click me')),
      ),
    );
  }
}
