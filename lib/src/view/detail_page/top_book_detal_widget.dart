import 'package:flutter/material.dart';
import 'package:books_library/src/view.dart';
import 'package:books_library/src/model.dart';


class TopContent extends StatelessWidget {
  final Book book;

  TopContent({this.book});

  List<Widget> _buildCategoryChips(TextTheme textTheme) {
    return book.categories.map((category) {
      return Padding(
        padding: const EdgeInsets.only(right: 5.0),
        child: Chip(
          
          label: Text(category),
          labelStyle: textTheme.caption,
          backgroundColor: Color(0xAF80d6ff),
        ),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;

    final topLeft = Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Hero(
            tag: book.title,
            child: Material(
              elevation: 15.0,
              shadowColor: shadowColor,
              child: Image(
                image: AssetImage(book.imageUrl),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        text('${book.pages} pages', color: Colors.black54, size: 12)
      ],
    );

    final topRigh = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        text(book.title,
            size: 16, isBold: true, padding: EdgeInsets.only(top: 16.0)),
        text(
          'by ${book.author}',
          color: Colors.black54,
          size: 12,
          padding: EdgeInsets.only(top: 10.0, bottom: 20.0),
        ),
        Row(
          children: <Widget>[
            RatingBar(rating: book.rating)
          ],
        ),
        SizedBox(height: 15.0),
        Wrap(
          children: _buildCategoryChips(textTheme),
        ),
      ],
    );



    return Container(
      color: backgroundColor,
      padding: EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Flexible(flex: 2, child: topLeft),
          Flexible(flex: 3, child: topRigh),
        ],
      ),
    );
  }
}

text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
                Padding(
                  padding: padding,
                  child: Text(
                    data,
                    style: TextStyle(
                        color: color,
                        fontSize: size.toDouble(),
                        fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );