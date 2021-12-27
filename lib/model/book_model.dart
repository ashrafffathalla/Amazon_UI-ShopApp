class BookModel
{
  String? image;
  String? secondImage;
  String? title;
  String? subtitle;
  bool favorites;
  BookModel({
   required this.image,
   required this.secondImage,
   required this.title,
   required this.subtitle,
   required this.favorites,
});

  // The New Books
  static BookModel newBook = BookModel(
      image: 'assets/images/new_book_1.jpeg',
      secondImage: 'assets/images/new_book_2.jpeg',
      title: 'Raft Of Stars',
      subtitle: 'Ashraf Fathalla',
      favorites: true,
  );
  static List<BookModel> books =
  [
    BookModel(
        image: 'assets/images/book_1.jpeg',
        secondImage: 'assets/images/book_1.jpeg',
        title: 'The Martian',
        subtitle: 'Andy Weir',
        favorites: false,
    ),
    BookModel(
      image: 'assets/images/book_2.jpeg',
      secondImage: 'assets/images/book_2.jpeg',
      title: 'Midnight War',
      subtitle: 'Mateo Martinez',
      favorites: false,
    ),
    BookModel(
      image: 'assets/images/book_3.jpeg',
      secondImage: 'assets/images/book_3.jpeg',
      title: 'The Hypocrite World',
      subtitle: 'Sophia Hill',
      favorites: false,
    ),
    BookModel(
      image: 'assets/images/book_4.jpeg',
      secondImage: 'assets/images/book_4.jpeg',
      title: 'Amara The Brave',
      subtitle: 'Ashraf Fathalla',
      favorites: true,
    ),
    BookModel(
      image: 'assets/images/book_5.jpeg',
      secondImage: 'assets/images/book_5.jpeg',
      title: 'Harry Potter',
      subtitle: 'A History Of Magic',
      favorites: true,
    ),
  ];
}