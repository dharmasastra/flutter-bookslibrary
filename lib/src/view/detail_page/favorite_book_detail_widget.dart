import 'package:flutter/material.dart';
import 'package:books_library/src/model.dart';

class FavoriteWidget extends StatefulWidget {
  final Book book;

  FavoriteWidget({this.book});

  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _favoriteStatus = false;
  
  @override
  void initState() {
    super.initState();

    selectBook();
  }
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon:
            Icon(
              _favoriteStatus ? Icons.favorite : Icons.favorite_border,
              color: _favoriteStatus ? Colors.pinkAccent : Colors.pinkAccent,
            // Icons.favorite_border,
            // color: Colors.pinkAccent,
            size: 35,
              ),
          onPressed: () async{
             _toggleFavorite();
          },
        ),
      ],
    );
  }

  void _toggleFavorite() async {
    var favoriteStatus;
    if(_favoriteStatus){
      final result = await TbFavorite().select().id_books.equals(widget.book.id).delete();
      favoriteStatus = false;
      print(result.toString());
    } else {
      saveBook();
      favoriteStatus = true;
    }
    setState(() {
      _favoriteStatus = favoriteStatus;
    });
  }
   void saveBook() async{
    List<String> _categoryList = widget.book.categories;

    final result = await TbFavorite(
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
  
  void selectBook() async{
    final result = await TbFavorite().select().id_books.equals(widget.book.id).toSingle();
    setState(() {
      _favoriteStatus = result != null;
    });
  }
}