import 'package:flutter/material.dart';
Widget buildNavigationBar() => BottomAppBar(
  shape:const CircularNotchedRectangle(),
  notchMargin: 8.0,
  child: Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(
          left: 50.0,
        ),
        child: IconButton(
            onPressed: (){},
            icon: const Icon(Icons.message_outlined),
        ),
      ),
      Spacer(),
      Padding(
        padding: const EdgeInsets.only(
          right: 50.0,
        ),
        child: IconButton(
          onPressed: (){},
          icon: const Icon(Icons.add_shopping_cart),
        ),
      ),
    ],
  ),
);