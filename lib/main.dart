import 'package:flutter/material.dart';
import 'fragments/HomeFragment.dart';
import 'fragments/SearchFragment.dart';

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
      home: HomeActivity(),
    );
  }
}

// ignore: must_be_immutable
class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

  // ignore: non_constant_identifier_names
  var MyItems = [
    {
      "img":
          "https://storage.googleapis.com/cms-storage-bucket/icon_flutter.0dbfcc7a59cd1cf16282.png",
      "title": "Emon",
    },
    {
      "img":
          "https://storage.googleapis.com/cms-storage-bucket/icon_flutter.0dbfcc7a59cd1cf16282.png",
      "title": "Hasan",
    },
    {
      "img":
          "https://storage.googleapis.com/cms-storage-bucket/icon_flutter.0dbfcc7a59cd1cf16282.png",
      "title": "Nakib",
    },
    {
      "img":
          "https://storage.googleapis.com/cms-storage-bucket/icon_flutter.0dbfcc7a59cd1cf16282.png",
      "title": "Emon",
    },
    {
      "img":
          "https://storage.googleapis.com/cms-storage-bucket/icon_flutter.0dbfcc7a59cd1cf16282.png",
      "title": "Hasan",
    },
    {
      "img":
          "https://storage.googleapis.com/cms-storage-bucket/icon_flutter.0dbfcc7a59cd1cf16282.png",
      "title": "Nakib",
    },
  ];

  // ignore: non_constant_identifier_names
  MySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

  // ignore: non_constant_identifier_names
  MyAlertDialog(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text("alert!"),
            content: Text("Do you want to delete"),
            backgroundColor: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),

            actions: [
              TextButton(
                onPressed: () {
                  MySnackBar("Delete success", context);
                  Navigator.of(context).pop();
                },
                child: Text("yes"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("no"),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Appbar"),
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.search_rounded), text: 'Serach'),
              Tab(icon: Icon(Icons.email), text: 'Email'),
              Tab(icon: Icon(Icons.settings), text: 'Settings'),
              Tab(icon: Icon(Icons.person), text: 'Person'),
              Tab(icon: Icon(Icons.alarm), text: 'Alarm'),
              Tab(icon: Icon(Icons.contact_page), text: 'Contact'),
              Tab(icon: Icon(Icons.balance), text: 'Balance'),
            ],
          ),
        ),
        body: TabBarView(children: [HomeFragment(), SearchFragment()]),
      ),
    );
  }
}
