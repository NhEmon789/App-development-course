import 'package:flutter/material.dart';
import 'package:testproject/page1.dart';
import 'package:testproject/page3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyWidget());
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  int _selectedIndex = 0;
  final _pages = [page1(), page3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          NavigationRail(
            backgroundColor: Color.fromARGB(255, 0, 0, 8),
            labelType: NavigationRailLabelType.all,
            destinations: [
              NavigationRailDestination(
                icon: Icon(Icons.wifi, color: Colors.white),
                label: Text("Wifi"),
                selectedIcon: Icon(Icons.wifi, color: Colors.blue),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.sunny, color: Colors.white),
                label: Text("Sunny"),
                selectedIcon: Icon(Icons.sunny, color: Colors.blue),
              ),
            ],
            selectedIndex: _selectedIndex,
            onDestinationSelected: (val) {
              setState(() {
                _selectedIndex = val;
              });
            },
          ),
          Expanded(child: Container(child: _pages[_selectedIndex])),
        ],
      ),
    );
  }
}
