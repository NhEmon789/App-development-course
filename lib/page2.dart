import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  String msg;
  page2(this.msg);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.deepPurple],
            ),
          ),
        ),
        leading: const Icon(Icons.home, color: Colors.white),
        title: const Text("Appbar", style: TextStyle(color: Colors.white)),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_a_photo),
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 400,
            width: double.infinity,
            color: Colors.lightBlue,
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FloatingActionButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: Icon(Icons.camera),
              ),
              SizedBox(width: 20),
              FloatingActionButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: Icon(Icons.photo),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
