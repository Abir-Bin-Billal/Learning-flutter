import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_nav_bar/google_nav_bar.dart';



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
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My app"),
        ),
        body:DismissibleExample(),
        );
  }
}

class DismissibleExample extends StatefulWidget {
   DismissibleExample({super.key});

  @override
  State<DismissibleExample> createState() => _DismissibleExampleState();
}

class _DismissibleExampleState extends State<DismissibleExample> {
List list = [
  {'title' : 'ListTile 1'},
  {'title' : 'ListTile 2'},
  {'title' : 'ListTile 3'},
  {'title' : 'ListTile 4'},
  {'title' : 'ListTile 5'},
  {'title' : 'ListTile 6'},
  {'title' : 'ListTile 7'},
  {'title' : 'ListTile 8'},
  {'title' : 'ListTile 9'},
  {'title' : 'ListTile 10'},
  {'title' : 'ListTile 11'},
  {'title' : 'ListTile 12'},
  {'title' : 'ListTile 13'},
  {'title' : 'ListTile 14'},
  {'title' : 'ListTile 15'},
];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context , index){
        return Dismissible(
            onDismissed: (direction) => setState(() {
              list.removeAt(index);
            }),
            background: Container(
              color: Colors.green,
              child: Icon(Icons.delete),
            ),
            key: ValueKey(list[index]),
            
          
          
          child: ListTile(
            title: Text(list[index]['title']),
            shape: Border.all(color: Colors.green),
            
          ));
        
      }
      
      );
  }
}
