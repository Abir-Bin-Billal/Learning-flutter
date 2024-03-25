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
  MySnackbar(String message, BuildContext context) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: Duration(seconds: 5),
      action: SnackBarAction(label: "Ok", onPressed: () {}),
    ));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Fluttertoast.showToast(
                  msg: "Toast added successfully",
                  toastLength: Toast.LENGTH_LONG,
                  backgroundColor: Colors.blue,
                  textColor: Colors.white,
                  gravity: ToastGravity.CENTER);
            },
            child: Text('Click me')),
      ),
    );
  }
}
