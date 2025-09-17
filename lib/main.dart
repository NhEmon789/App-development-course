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
  double _svalue = 2.0;
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
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.lightBlue),
          ),
          child: Column(
            children: [
              Slider(
                value: _svalue,
                min: 0,
                max: 10,
                activeColor: Colors.lightBlue,
                inactiveColor: const Color.fromARGB(255, 103, 151, 173),
                divisions: 100,
                label: 'Range',
                onChanged: (value) {
                  setState(() {
                    _svalue = value;
                  });
                },
              ),
              Text("Slider Value :$_svalue"),
            ],
          ),
        ),
      ),
    );
  }
}
