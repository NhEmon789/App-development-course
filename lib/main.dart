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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Dismissible(
          key: ValueKey("value"),
          secondaryBackground: Container(
            color: Colors.redAccent,
            child: Icon(Icons.delete, size: 40),
          ),
          background: Container(
            color: Colors.blue,
            child: Icon(Icons.delete, size: 40),
          ),

          child: ListTile(
            title: Text("Data"),
            subtitle: Text("This is data"),
            trailing: Icon(Icons.delete),
            tileColor: Colors.greenAccent,
          ),
        ),
      ),
    );
  }
}
