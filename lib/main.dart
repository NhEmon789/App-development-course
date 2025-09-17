import 'package:flutter/material.dart';
import 'package:testproject/page1.dart';
import 'package:testproject/page2.dart';
import 'package:testproject/page3.dart';

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
  final PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose(); // prevent memory leaks
    super.dispose();
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
      body: Container(
        height: 400,
        width: double.infinity,
        color: Colors.red,
        alignment: Alignment.center,
        child: AspectRatio(
          aspectRatio: 16 / 8,
          child: Container(color: Colors.lightBlue),
        ),
      ),
    );
  }
}
