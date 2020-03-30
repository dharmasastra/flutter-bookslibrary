import 'package:flutter/material.dart';
import 'package:books_library/src/view/detail_page/book_detail_page.dart';
import 'package:books_library/src/view.dart';
import 'package:books_library/src/model.dart';

class HistoryHomeWidget extends StatefulWidget {
  @override
  _HistoryHomeWidgetState createState() => _HistoryHomeWidgetState();
}

class _HistoryHomeWidgetState extends State<HistoryHomeWidget> {
  @override
  void initState() {
    super.initState();
    
    setState(() {
       selectAndSaveFavoriteBook();
    });
   
  }

  @override
  Widget build(BuildContext context) {

    createTile(Book book) => Hero(
          tag: book.title,
          child: Material(
            elevation: 10.0,
            shadowColor: shadowColor,
            child: InkWell(
              onTap: () { 
                // Navigator.pushNamed(context, 'book_detail_page/${book.title}');
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => BookDetailPage(book: book),
                  )
                );
              },
              child: Image(
                image: AssetImage(book.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        );

    return CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(16.0),
          sliver: SliverGrid.count(
            childAspectRatio: 2 / 3,
            crossAxisCount: 3,
            mainAxisSpacing: 20.0,
            crossAxisSpacing: 20.0,
            children: _book?.map((book) => createTile(book))?.toList()??[],
            // children: ,
          ),
        )
      ],
    );
  }

  List<Book> _book;

  void selectAndSaveFavoriteBook() async {
    final selectHistory = await TbHistory().select().orderByDesc('id').toList();

    List<Book> result = selectHistory.map((book) => Book(
      id: book.id_books,
      title: book.title,
      author: book.author,
      description: book.description,
      imageUrl: book.imageUrl,
      pages: book.pages,
      categories: book.category.split(","),
      rating: book.rating,
      publisher: book.publisher )).toList();

    _book = result;

  }
}