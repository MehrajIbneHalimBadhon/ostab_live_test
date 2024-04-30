import 'package:flutter/material.dart';

Widget customText(String text, double fontSize, Color color) {
  return Text(
    text,
    style: TextStyle(fontSize: fontSize, color: color),
  );
}
