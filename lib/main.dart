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
            AnimatedCrossFade(
              firstChild: Container(
                height: 200,
                color: const Color.fromARGB(198, 255, 143, 5),
                child: Center(
                  child: OutlinedButton(
                    onPressed: () {
                      setState(() {
                        _value = false; // switch to secondChild
                      });
                    },
                    child: const Text("easy"),
                  ),
                ),
              ),
              secondChild: OutlinedButton(
                onPressed: () {
                  setState(() {
                    _value = true; // switch to firstChild
                  });
                },
                child: const Text("Show Container"),
              ),
              crossFadeState:
                  _value ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 1),
            ),
          ],
        ),
      ),
    );
  }
}
