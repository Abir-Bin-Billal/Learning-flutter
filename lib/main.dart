import 'package:flutter/material.dart';
void main(){
  runApp(Myapp());
}


class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  Widget addDetails(String name , String des){
    return ListTile(
      title: Text(name),
      subtitle: Text(des),
      textColor: Colors.black,
      leading: CircleAvatar(
        child: Text(name[0]),
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.blue,
            flexibleSpace: FlexibleSpaceBar(title: Text("Contact",style: TextStyle(color: Colors.white),)),

          ),
          SliverList(delegate: SliverChildListDelegate(<Widget> [
            addDetails("abir", "Te has no"),
            addDetails("arosh", "THeas no"),
            addDetails("adib", "THeras no"),
            addDetails("fjoajfo", "TH has no"),
            addDetails("fjdofo", "THeras no"),
            addDetails("wiomnf", "THerhas no"),
            addDetails("gkiek", "THere s no"),
            addDetails("ejdfn", "THerhas no"),
            addDetails("kdfdo", "THeras no"),
            addDetails("kodfk", "THereas no"),
            addDetails("abfgrtir", "THere has no"),
            addDetails("abifgr", "THeras no"),
            addDetails("sgfabir", "THe has no"),
            addDetails("rtrsabir", "THe s no"),
            addDetails("trtabir", "THer no"),
            addDetails("rgabir", "THe has no"),
            addDetails("yrtyabir", "THehas no"),
            addDetails("rtrabir", "THe ha no"),
            addDetails("trabir", "THere has no"),

          ]))
          ],
        ),
      ),
    );
    
  }
}