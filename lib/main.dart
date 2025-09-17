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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlue),
            ),

            child: SwitchListTile(
              contentPadding: EdgeInsets.all(10),
              value: _svalue,
              title: Text("Swicth"),
              subtitle: Text("data"),
              secondary: Icon(Icons.alarm),
              activeColor: Colors.lightBlue,
              activeTrackColor: Colors.red,
              inactiveThumbColor: Colors.black,
              onChanged: (value) {
                setState(() {
                  _svalue = value;
                });
              },
            ),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => page2("hello")),
                );
              },
              child: Text("Go to page 2"),
            ),
          ),
        ],
      ),
    );
  }
}
