import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyWidget());
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  var selected = "choose";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(selected, style: TextStyle(fontSize: 50)),
            DropdownButton(
              iconSize: 40,
              items: [
                DropdownMenuItem(value: "Easy", child: Text("Easy")),
                DropdownMenuItem(
                  value: "Explanation",
                  child: Text("Explanation"),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
