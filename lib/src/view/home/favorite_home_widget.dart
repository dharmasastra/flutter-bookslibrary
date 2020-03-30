import 'package:flutter/material.dart';
import 'package:books_library/src/view/detail_page/book_detail_page.dart';
import 'package:books_library/src/view.dart';
import 'package:books_library/src/model.dart';


class FavoriteHomeWidget extends StatefulWidget {
  @override
  _FavoriteHomeWidgetState createState() => _FavoriteHomeWidgetState();
}

class _FavoriteHomeWidgetState extends State<FavoriteHomeWidget> {

  @override
  void initState() {
    super.initState();
    
    setState(() {
      selectAndSaveFavoriteBook();
    });

  }
  _getRequests()async{
    selectAndSaveFavoriteBook();
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
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (contex) => BookDetailPage(book: book)
                  ),
                ).then((result) => result?_getRequests():null);
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
    final selectFavorite = await TbFavorite().select().toList();

    List<Book> result = selectFavorite.map((book) => Book(
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