import 'package:amazon_ui/model/book_model.dart';
import 'package:flutter/material.dart';
List<Widget> buildBookView({
  required BookModel book,

})=>[
  Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    elevation: 5,
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Image.asset(
        book.secondImage!,
        height: 350,
        fit: BoxFit.cover,
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
      book.title!,
      style:const TextStyle(
          fontWeight: FontWeight.bold,
        fontSize: 16.0,
      ),
    ),
  ),

];