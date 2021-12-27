import 'package:amazon_ui/model/book_model.dart';
import 'package:amazon_ui/pages/books/widget/book_view.dart';
import 'package:amazon_ui/pages/books/widget/description.dart';
import 'package:flutter/material.dart';
class BookPageState extends StatefulWidget {
 const BookPageState({Key? key, required this.book}) : super(key: key);
  final BookModel book;
  @override
  State<BookPageState> createState() => _BookPageStateState();
}

class _BookPageStateState extends State<BookPageState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
            onPressed: ()
            {
              Navigator.pop(context);
            },
            icon: const Icon(
                Icons.keyboard_arrow_left_outlined,
              color: Colors.black,
            ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: ()
              {
                setState(() {
                  widget.book.favorites = !widget.book.favorites;

                });
              },
              icon: Icon(
                widget.book.favorites ? Icons.favorite : Icons.favorite_border,
                color: Colors.red,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 8.0*4,
            ),
            child: Column(
              children: [
                ...buildBookView(
                    book: widget.book,
                ),
                ...buildDescription(),
              ],
            ),
          )
        ),
      ),
    );
  }
}
