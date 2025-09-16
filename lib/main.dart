import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(), debugShowCheckedModeBanner: false);
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.home, color: Colors.white),
        title: Text("Appbar", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_a_photo),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(flex: 2, child: Container(color: Colors.deepOrangeAccent)),
          Expanded(flex: 1, child: Container(color: Colors.blue)),
          Expanded(flex: 1, child: Container(color: Colors.green)),
        ],
      ),
    );
  }
}
