import 'dart:math';

import 'package:flutter/material.dart';
import 'package:testproject/page1.dart';
import 'package:testproject/page2.dart';
import 'package:testproject/page3.dart';
import 'package:testproject/style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Removes debug banner
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _rvalue = 2;
  bool _svalue = false;
  void method(int value) {
    setState(() {
      _rvalue = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.home, color: Colors.white),
        title: const Text("Appbar", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.lightBlue,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_a_photo),
            color: Colors.white,
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 200,
            backgroundColor: Colors.red,
            flexibleSpace: FlexibleSpaceBar(title: Text("SliverAppbar")),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              addDetails("One", "This is one"),
              addDetails("Two", "This is two"),
              addDetails("Three", "This is three"),
              addDetails("Four", "This is one"),
              addDetails("Five", "This is two"),
              addDetails("Six", "This is three"),
              addDetails("Seven", "This is one"),
              addDetails("Eight", "This is two"),
              addDetails("Nine", "This is three"),
              addDetails("Ten", "This is one"),
              addDetails("Twelve", "This is two"),
              addDetails("Thirteen", "This is three"),
            ]),
          ),
        ],
      ),
    );
  }
}

Widget addDetails(String name, String description) {
  return ListTile(
    title: Text(name),
    tileColor: const Color.fromARGB(255, 82, 192, 255),
    subtitle: Text(description),
    leading: CircleAvatar(child: Text(name[0])),
  );
}
