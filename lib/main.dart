import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: BottomNavBar());
  }
}

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  void _showToast() {
    Fluttertoast.showToast(
      msg: "Easy Explanation",
      toastLength: Toast.LENGTH_SHORT, // SHORT is more common
      gravity: ToastGravity.BOTTOM, // TOP / CENTER / BOTTOM
      timeInSecForIosWeb: 2, // iOS/web requires this for duration
      backgroundColor: Colors.lightBlue,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Fluttertoast Example")),
      body: Center(
        child: ElevatedButton(
          onPressed: _showToast,
          child: const Text("Click me"),
        ),
      ),
    );
  }
}
