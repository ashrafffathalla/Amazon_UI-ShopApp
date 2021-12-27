import 'package:amazon_ui/model/book_model.dart';
import 'package:amazon_ui/pages/books/book_page.dart';
import 'package:flutter/material.dart';

class BuildBookList extends StatelessWidget
{
   List<BookModel> books = BookModel.books;

   BuildBookList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      color: Colors.grey[200],
      child:  Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
               vertical: 8.0,
              horizontal: 8.0 * 2,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Best Seller',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                    onPressed: (){},
                    child:  const Text('See all'),
                      style: TextButton.styleFrom(
                        padding:  const EdgeInsets.symmetric(
                          vertical: 2.0,
                          horizontal: 9.0,
                        ),
                        backgroundColor: Colors.deepOrange,
                        primary: Colors.white,
                        minimumSize: const Size(5, 5),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                    ),
              ],
            ),
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: List.generate(books.length,
                      (index) => Padding(
                        padding: const EdgeInsets.only(
                          bottom: 8.0 * 2,
                          right: 8.0,
                          left: 8.0,
                        ),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(
                                context,
                               MaterialPageRoute(
                                 builder: (context) => BookPageState(
                                   book: books[index],
                                 ),
                               ),
                            );
                          },
                          child: Column(
                            children: [
                              Card(shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)
                              ),
                                elevation: 4,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(12.0),
                                  child: Image.asset(
                                    books[index].image!,
                                    height: 180.0,
                                    width: 120,
                                    fit: BoxFit.cover,

                                  ),
                                ),
                              ),
                              Container(
                                width: 120,
                                child: Text(books[index].title!,
                                maxLines: 2,
                                  style:const TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 120,
                                child: Text(books[index].subtitle!,
                                maxLines: 2,
                                  style:const TextStyle(
                                    fontSize: 12.0,
                                    color: Colors.blueGrey,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
