import 'package:flutter/material.dart';
List<Widget> buildDescription() => [
  const Expanded(
      child:Padding(
        padding:const  EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Text(
            'This is one of the best book descriptions I’ve read. It grabs you from the first sentence, and forces you to read the rest,which is short and to the point.',
            textAlign: TextAlign.justify,
            style: TextStyle(
             fontWeight: FontWeight.w600,
              color: Colors.blueGrey,
            ),
          ),
        ),
      ),
  ),
   Padding(
      padding: const EdgeInsets.all(8.0,),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text('Share',),
        TextButton(
            onPressed: (){},
            child:const Text(
              'One Click Purchase',),
              style: TextButton.styleFrom(
                padding:const EdgeInsets.symmetric(
                  vertical: 4.0,
                  horizontal: 8.0,
                ),
                backgroundColor: Colors.deepOrange,
                primary: Colors.white,
                minimumSize:const Size(5, 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
            ),
        ),
      ],
    ),
  ),
];