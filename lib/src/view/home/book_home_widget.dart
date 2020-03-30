import 'package:flutter/material.dart';
import 'package:books_library/src/view/detail_page/book_detail_page.dart';
import 'package:books_library/src/App/models/repositories/books_api.dart';
import 'package:books_library/src/view.dart';
import 'package:books_library/src/model.dart';


class BookHomeWidget extends StatefulWidget {
  @override
  _BookHomeWidgetState createState() => _BookHomeWidgetState();
}

class _BookHomeWidgetState extends State<BookHomeWidget> {

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
            children: books.map<Widget>((book) => createTile(book)).toList(),
          ),
        )
      ],
    );
  }
}