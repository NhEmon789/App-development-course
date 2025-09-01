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
      home: HomeActivity(),
    );
  }
}

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});

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

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(
      context,
    ).showSnackBar(SnackBar(content: Text(message)));
  }

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
    final ButtonStyle buttonStyle = ElevatedButton.styleFrom(
      padding: EdgeInsets.all(25),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
    );

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

      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 1.0,
          childAspectRatio: 1.2,
        ),
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              MySnackBar(MyItems[index]['title'], context);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 200,
              child: Image.network(MyItems[index]["img"]!, fit: BoxFit.fill),
            ),
          );
        },
      ),

      floatingActionButton: FloatingActionButton(
        elevation: 10,
        backgroundColor: Colors.tealAccent,
        foregroundColor: Colors.white,
        onPressed: () {
          MySnackBar("button", context);
        },
        child: Icon(Icons.home),
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
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),

              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Flutter",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "flutter@example.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://storage.googleapis.com/cms-storage-bucket/icon_flutter.0dbfcc7a59cd1cf16282.png",
                ),
                onDetailsPressed: () {},
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo),
              title: Text("Add to photos"),
              onTap: () {
                MySnackBar("button", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
              onTap: () {
                MySnackBar("button", context);
              },
            ),
          ],
        ),
      ),
      endDrawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.all(0),

              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.white),
                accountName: Text(
                  "Flutter",
                  style: TextStyle(color: Colors.black),
                ),
                accountEmail: Text(
                  "flutter@example.com",
                  style: TextStyle(color: Colors.black),
                ),
                currentAccountPicture: Image.network(
                  "https://storage.googleapis.com/cms-storage-bucket/icon_flutter.0dbfcc7a59cd1cf16282.png",
                ),
                onDetailsPressed: () {},
              ),
            ),
            ListTile(
              leading: Icon(Icons.add_a_photo),
              title: Text("Add to photos"),
              onTap: () {
                MySnackBar("button", context);
              },
            ),
            ListTile(
              leading: Icon(Icons.alarm),
              title: Text("Alarm"),
              onTap: () {
                MySnackBar("button", context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
