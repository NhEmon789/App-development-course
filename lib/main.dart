import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final pages = [A(), B(), C(), D(), E()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.white,
        backgroundColor: Colors.blue,
        items: [
          Icon(Icons.home),
          Icon(Icons.subject),
          Icon(Icons.group),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}

class E {}

class D {}

class C {}

class B {}

class A {}
