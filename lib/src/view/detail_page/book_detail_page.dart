import 'package:books_library/src/model.dart';
import 'package:books_library/src/view.dart';
import 'package:flutter/material.dart';

import 'package:books_library/src/view/detail_page/top_book_detal_widget.dart';
import 'package:books_library/src/view/detail_page/bottom_book_detail_widget.dart';


class BookDetailPage extends StatefulWidget {
  final Book book;

  BookDetailPage({this.book});

  @override
  _BookDetailPageState createState() => _BookDetailPageState();
}

class _BookDetailPageState extends State<BookDetailPage> {

  @override
  void initState() {
    super.initState();

    saveHistory();
  }
  @override
  Widget build(BuildContext context) {
    final appBar = AppBar(
      leading: IconButton(
        icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () => Navigator.pop(context, true),
      ),
      backgroundColor: appBarColor,
      elevation: 5.0,
      title: Text('Detail Book'),
    );

    
    return WillPopScope(
      onWillPop:() async { return false; },
      child: Scaffold(
        backgroundColor: backgroundColor,
        appBar: appBar,
        body: GestureDetector(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TopContent(book: widget.book,), 
            BottomContent(book: widget.book),
            ],
          ),
          // onPanUpdate: (details) {
          //   if(details.delta.dx > 0) {
          //     Navigator.pop(context, true);
          //   }
          // },
          // onSwipeRight: () {
          //   Navigator.pop(context, true);
          // },
        ),
        // bottomNavigationBar: BottomDetailAppBar()
      ),
    );
    // return Scaffold(
    //   backgroundColor: backgroundColor,
    //   appBar: appBar,
    //   body: SwipeDetector(
    //     child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       TopContent(book: widget.book,), 
    //       BottomContent(book: widget.book),
    //       ],
    //     ),
    //     onSwipeRight: () {
    //       Navigator.pop(context, true);
    //     },
    //   ),
    //   bottomNavigationBar: BottomDetailAppBar()
    // );
  }


  void saveHistory() async{
    final selectBook = await TbHistory().select().id_books.equals(widget.book.id).toSingle();

    List<String> _categoryList = widget.book.categories;

    if (selectBook != null) {
      final deleteHistory = await TbHistory().select().id_books.equals(widget.book.id).delete();
      print(deleteHistory);
    }
    final result = await TbHistory(
      title: widget.book.title,
      author: widget.book.author,
      description: widget.book.description,
      id_books: widget.book.id,
      imageUrl: widget.book.imageUrl,
      pages: widget.book.pages,
      category: _categoryList.join(','),
      rating: widget.book.rating,
      publisher: widget.book.publisher,
      ).save();
    print(result.toString());
  }
}

// class BookDetailPage extends StatelessWidget {
//   final Book book;

//   BookDetailPage({this.book});
  
//   @override
//   Widget build(BuildContext context) {
//     //app bar
    // final appBar = AppBar(
    //   // leading: IconButton(
    //   //   icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
    //   //   onPressed: () => Navigator.of(context).pop(),
    //   // ),
    //   backgroundColor: appBarColor,
    //   elevation: 5.0,
    //   title: Text('Detail Book'),
    // );

    // return Scaffold(
    //   backgroundColor: backgroundColor,
    //   appBar: appBar,
    //   body: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: <Widget>[
    //       TopContent(book: book,), 
    //       BottomContent(book: book),
    //       ],
    //   ),
    //   bottomNavigationBar: BottomDetailAppBar()
    // );
//   }
//}