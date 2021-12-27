import 'package:amazon_ui/model/book_model.dart';
import 'package:amazon_ui/pages/books/book_page.dart';
import 'package:flutter/material.dart';

class BuildNewBook extends StatelessWidget {
final newBook = BookModel.newBook;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 2 * 8.0,
            vertical: 8.0,
          ),
          child: Row(
            children: const[
              Text(
                'Hot New Release',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              Spacer(),
              Icon(
                Icons.keyboard_arrow_right,
              ),
            ],
          ),
        ),
        InkWell(
          onTap:()
          {
            //TODO
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookPageState(
                  book: newBook,
                ),
              ),
            );
          },
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 8.0,
                ),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)
                ),
                  elevation: 4,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(
                      newBook.image!,
                      height: 180.0,
                      width: double.infinity,
                      fit: BoxFit.cover,

                    ),
                  ),
                ),
              ),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:[
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 8.0),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text(
                         newBook.title!,
                         style: const TextStyle(
                           fontSize: 16.0,
                           color: Colors.black,
                         ),
                       ),
                       Text(
                         newBook.subtitle!,
                         style: const TextStyle(
                           fontSize: 12.0,
                           color: Colors.blueGrey,
                         ),
                       ),
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(
                     right: 6.0,
                   ),
                   child: TextButton(
                     onPressed: (){},
                     child:  const Text('4.8'),
                     style: TextButton.styleFrom(
                       padding:  const EdgeInsets.symmetric(
                         vertical: 2.0,
                         horizontal: 8.0,
                       ),
                       backgroundColor: Colors.deepOrange,
                       primary: Colors.white,
                       minimumSize: const Size(5, 5),
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                     ),
                   ),
                 ),
               ],
             ),
            ],
          ),
        ),
        SizedBox(height:MediaQuery.of(context).padding.bottom,),//important to visible
      ],
    );
  }
}