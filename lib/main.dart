import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MaterialApp(home: BottomNavBar()));

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final pages = [A(), B(), C(), D()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return Dialog(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none, // <-- important (allows overflow)
                    alignment: Alignment.topCenter,
                    children: [
                      SizedBox(
                        height: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              SizedBox(height: 50),
                              Text(
                                "Alert Dialog",
                                style: TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 23,
                                  color: Color(0xff070707),
                                ),
                              ),
                              SizedBox(height: 20),
                              Text(
                                "This is an Alert Dialog",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14,
                                  color: Color(0xff070707),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        top: -30, // makes avatar float outside dialog
                        child: CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: ClipOval(
                            child: Image.asset(
                              "images/ph1.jpg",
                              fit: BoxFit.cover,
                              width: 60,
                              height: 60,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          },
          child: const Text("click"),
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.white,
        backgroundColor: Colors.blue,
        items: const [
          Icon(Icons.home),
          Icon(Icons.subject),
          Icon(Icons.group),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}

class D {}

class C {}

class B {}

class A {}
