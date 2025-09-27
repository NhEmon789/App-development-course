import 'package:flutter/material.dart';
import 'package:testproject/page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(labelText: "Name"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your name";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Age"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your age";
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: "Email"),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter your email";
                  }
                  return null;
                },
              ),
              OutlinedButton(
                onPressed: () {
                  if (_formkey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) =>
                                const page1(), // ensure Page2 is defined as a widget
                      ),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
