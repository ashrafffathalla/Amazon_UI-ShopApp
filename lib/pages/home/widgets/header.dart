import 'package:flutter/material.dart';

List<Widget> buildHeader()=> [
  const Padding(
    padding: EdgeInsets.only(
    left: 2 * 8,
    top: 8
    ),
    child: Text(
      'Bookshelf',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25.0,
      ),
    ),
  ),
  const Padding(
    padding: EdgeInsets.symmetric(
        horizontal: 2 * 8,
        vertical: 8
    ),
    child: Text(
      'Welcome Amazon UI',
      style: TextStyle(
        color: Colors.black54
      ),
    ),
  ),
];