import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.teal),
      darkTheme: ThemeData(primarySwatch: Colors.indigo),
      color: Colors.amber,
      debugShowCheckedModeBanner: false,
      home: const HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  const HomeActivity({super.key});

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AppBar"),
        centerTitle: true,
        titleSpacing: 0,
        toolbarHeight: 60,
        toolbarOpacity: 1,
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: const Color.fromARGB(255, 64, 255, 188),
        elevation: 10.0,
        actions: [
          IconButton(
            onPressed: () {
              MySnackBar("comment", context);
            },
            icon: Icon(Icons.comment),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("search", context);
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              MySnackBar("home", context);
            },
            icon: Icon(Icons.home),
          ),
        ],
      ),
      body: Center(child: Text("data")),
      floatingActionButton: FloatingActionButton(
        elevation: 10,
        child: Icon(Icons.home),
        backgroundColor: Colors.tealAccent,
        foregroundColor: Colors.white,
        onPressed: () {
          MySnackBar("button", context);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        selectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        backgroundColor: Colors.tealAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
        onTap: (int index) {
          if (index == 0) {
            MySnackBar("home", context);
          }
          if (index == 1) {
            MySnackBar("search", context);
          }
          if (index == 2) {
            MySnackBar("profile", context);
          }
        },
      ),
    );
  }
}
