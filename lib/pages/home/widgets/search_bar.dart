import 'package:flutter/material.dart';
Widget buildSearchBar()=>Padding(
  padding:  const EdgeInsets.all(2 * 7.5),
  child:TextField(
    decoration:  InputDecoration(
      hintText: 'Search a book',
      fillColor: Colors.grey[200],
      filled: true,
      prefixIcon:const Icon(Icons.search),
      contentPadding:const EdgeInsets.symmetric(
        horizontal:8.0,
        vertical: 0.0,
      ),
        border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20.0),
        borderSide: BorderSide.none,
      ),
    ),
  ),
);