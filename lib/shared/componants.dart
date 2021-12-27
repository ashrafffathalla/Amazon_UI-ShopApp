  import 'package:flutter/material.dart';
  Widget buildCategory({
  required String category,
  required Color  color,
  required IconData iconData,
  }){
    return Padding(
    padding: const EdgeInsets.symmetric(
    vertical: 8.0,
  ),
    child: InkWell(
      onTap: (){},
    borderRadius: BorderRadius.circular(25.0),
    child:  Container(
    width: double.infinity,
    child: Wrap(
    crossAxisAlignment: WrapCrossAlignment.center,
    spacing: 2*8,
    children: [
      CircleAvatar(
    backgroundColor: color,
    child: Icon(
      iconData,
    color:  Colors.white,
    ),
  ),
      Text(
        category,
        style:const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20.0,
        ),
      ),
 ],
   ),
    ),
    ),
  );
  }