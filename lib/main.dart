import 'package:flutter/material.dart';

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
  bool _value = false; // ✅ removed @override

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionTile(
              title: Text("data"),
              subtitle: Text("this is one"),
              leading: IconButton(
                icon: Icon(Icons.dashboard),
                onPressed: () {},
                tooltip: "dashboard",
              ),
              trailing: Icon(Icons.ac_unit),
              children: [Container(height: 200, color: Colors.purple)],
            ),
          ],
        ),
      ),
    );
  }
}
