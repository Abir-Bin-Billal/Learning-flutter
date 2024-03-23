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
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Dialog(
                      child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Stack(       
                            alignment: Alignment.topCenter,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                height: 250,
                                width: 250,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(height: 10),
                                    Text(
                                      "Alert Dialog",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before the final copy is available.",
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                              ),
                              Positioned(
                                  top: -70,
                                  child: CircleAvatar(
                                    radius:50,
                                    child: Image.network("https://cdn.pixabay.com/photo/2017/07/08/18/54/decor-2485268_640.png")
                                  ))
                            ],
                          )),
                    );
                  });
            },
            child: Text("Click me!")),
      ),
    );
  }
}
