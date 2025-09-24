import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:testproject/page1.dart';

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
  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: [
        PageViewModel(
          title: "First",
          body: "This is our first description",
          image: Image.asset("images/ph1.jpg"),
        ),
        PageViewModel(
          title: "Second",
          body: "This is our second description",
          image: Image.asset("images/ph1.jpg"),
        ),
        PageViewModel(
          title: "Third",
          body: "This is our third description",
          image: Image.asset("images/ph1.jpg"),
        ),
      ],
      onDone: () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => page1()), // fixed class name
        );
      },
      done: const Text("Done", style: TextStyle(fontWeight: FontWeight.w600)),
      showSkipButton: true,
      skip: const Text("Skip"),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.grey,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
    );
  }
}
