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
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.orangeAccent,
              margin: EdgeInsets.all(10),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.orangeAccent,
              margin: EdgeInsets.all(10),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.orangeAccent,
              margin: EdgeInsets.all(10),
            ),
          ],
        ),
      ),
    );
  }
}
