import 'package:flutter/material.dart';
import 'package:books_library/src/view/detail_page/description_book_detail_widget.dart';
import 'package:books_library/src/view/detail_page/favorite_book_detail_widget.dart';
import 'package:books_library/src/model.dart';

class BottomContent extends StatelessWidget {
  final Book book;
  
  BottomContent({this.book});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.0),
          child: Divider(
            color: Colors.black45,
          ),
        ),
        Container(
            child: DescriptionTextWidget(text: book.description),
        ),
        FavoriteWidget(book: book)
      ],
    );
  }
}

class BottomDetailAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      elevation: 0,
      color: Colors.transparent,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 15),
          Padding(
            padding: const EdgeInsets.only(top: 13),
            child: ButtonTheme(
              minWidth: 345,
              height: 40,
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                onPressed: () {},
                child: Text(
                  "Borrow Now",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
                color: Color(0xFF1f90f2),
              ),
            ),
          ),
        ],
      ), 
    );
  }
}