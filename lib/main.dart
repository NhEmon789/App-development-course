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
  var _value = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
          text: TextSpan(
            text: "Easy explanation",
            style: TextStyle(fontSize: 20),
            children: [
              TextSpan(
                text: "Subscribe",
                style: TextStyle(fontSize: 25, color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
