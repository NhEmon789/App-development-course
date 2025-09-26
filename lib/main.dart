import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyWidget(), // removed const because MyWidget is not const
      debugShowCheckedModeBanner: false, // optional: removes debug banner
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int counter = 0;
  loadcounter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      counter = pref.getInt("counter") ?? 0;
    });
  }

  increment() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      counter++;
      pref.setInt("counter", counter);
    });
  }

  @override
  void initState() {
    loadcounter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "You have clicked $counter times",
              style: TextStyle(fontSize: 30),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: increment,
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }
}
