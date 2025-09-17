import 'package:flutter/material.dart';

TextStyle headLine(context) {
  var width = MediaQuery.of(context).size.width;

  if (width < 700) {
    return TextStyle(color: Colors.blue, fontSize: 25);
  } else {
    return TextStyle(color: Colors.red);
  }
}
