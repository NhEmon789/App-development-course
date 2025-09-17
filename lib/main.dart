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
  int _rvalue = 0;
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
              RadioListTile(
                value: 1,
                groupValue: _rvalue,
                activeColor: Colors.lightBlue,

                title: Text("iphone"),
                subtitle: Text("data"),
                secondary: Icon(Icons.apple),
                controlAffinity: ListTileControlAffinity.trailing,
                selected: _rvalue == 1 ? true : false,

                onChanged: (value) {
                  method(value!);
                },
              ),
              RadioListTile(
                value: 2,
                groupValue: _rvalue,
                activeColor: Colors.lightBlue,
                title: Text("samsung"),
                subtitle: Text("data"),
                secondary: Icon(Icons.phone_sharp),
                controlAffinity: ListTileControlAffinity.trailing,
                selected: _rvalue == 2 ? true : false,
                onChanged: (value) {
                  method(value!);
                },
              ),
              RadioListTile(
                value: 3,
                groupValue: _rvalue,
                activeColor: Colors.lightBlue,

                title: Text("Nokia"),
                subtitle: Text("data"),
                secondary: Icon(Icons.handshake_sharp),
                controlAffinity: ListTileControlAffinity.trailing,
                selected: _rvalue == 3 ? true : false,

                onChanged: (value) {
                  method(value!);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
