// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  DetailsPage({super.key, this.receivedata});
  var receivedata;

  @override
  Widget build(BuildContext context) {
    // Determine if there’s an avatar, otherwise show initials
    String? avatarUrl = receivedata["avatar"];
    String name = receivedata["name"] ?? "Unknown";

    return Scaffold(
      appBar: AppBar(title: Text(name), backgroundColor: Colors.teal),
      body: Center(
        child: CircleAvatar(
          radius: 100,
          backgroundColor: Colors.grey[300],
          child:
              avatarUrl != null
                  ? ClipOval(
                    child: Image.network(
                      avatarUrl,
                      width: 180,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  )
                  : Text(
                    name[0], // First letter of name
                    style: const TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
        ),
      ),
    );
  }
}
