import 'package:flutter/material.dart';

class page2 extends StatelessWidget {
  String msg;
  page2(this.msg);
  @override
  Widget build(BuildContext context) {
    return Container(color: Colors.greenAccent, child: Text("$msg"));
  }
}
